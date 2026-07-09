import 'package:collection/collection.dart';

import 'package:cql/src/internal.dart';

/// Translator-side queryable wrapper over a loaded [ModelInfo].
///
/// Mirrors the Java reference's `org.cqframework.cql.cql2elm.model.Model`:
/// an indexed type-name resolver (`resolveTypeName`, case-aware per the
/// modelinfo's `caseSensitive` flag), a label resolver, element-type
/// resolution that walks `baseType` inheritance, and the model's declared
/// implicit conversions (from `conversionInfo` — e.g. `FHIR.Quantity` →
/// `System.Quantity` via `FHIRHelpers.ToQuantity`).
///
/// This is the data source for translator type inference: a `Property`'s
/// result type comes from [resolveElementType], and implicit
/// FHIRHelpers-conversion insertion is driven by [findConversionFrom] /
/// [findConversion] — never by property-name heuristics.
class Model {
  Model(this.modelInfo) {
    _buildIndexes();
  }

  /// Identity-cached accessor — modelinfo data files expose one `final`
  /// [ModelInfo] instance each, so indexing happens once per model.
  factory Model.of(ModelInfo modelInfo) =>
      _cache[modelInfo] ??= Model(modelInfo);

  static final Expando<Model> _cache = Expando<Model>();

  final ModelInfo modelInfo;

  /// The ELM System-types namespace URI.
  static const String systemTypesUri = 'urn:hl7-org:elm-types:r1';

  late final String _modelName = modelInfo.name;
  late final bool _caseSensitive = modelInfo.caseSensitive ?? false;

  final Map<String, TypeInfo> _typeIndex = <String, TypeInfo>{};
  final Map<String, ClassInfo> _labelIndex = <String, ClassInfo>{};
  final Map<String, List<ConversionInfo>> _conversionsFrom =
      <String, List<ConversionInfo>>{};

  String _casify(String name) => _caseSensitive ? name : name.toLowerCase();

  /// Normalizes any type-name spelling found in modelinfo data to the
  /// canonical `Qualifier.LocalName` form:
  ///
  /// - `{urn:hl7-org:elm-types:r1}Quantity` → `System.Quantity`
  /// - `{http://hl7.org/fhir}Patient` → `FHIR.Patient` (via the model url)
  /// - `Patient` → `FHIR.Patient` (bare names belong to this model)
  /// - `Account.Coverage` → `FHIR.Account.Coverage` (nested class names
  ///   contain dots; only `System.` or this model's name is a qualifier)
  /// - `System.Any` / `FHIR.Patient` → unchanged
  ///
  /// Generic type syntax (`Interval<System.DateTime>`, `List<...>`) is
  /// passed through unchanged.
  String normalizeTypeName(String name) {
    if (name.contains('<')) return name;
    if (name.startsWith('{')) {
      final qname = QName.parse(name);
      if (qname.namespaceURI == systemTypesUri) {
        return 'System.${qname.localPart}';
      }
      if (qname.namespaceURI == modelInfo.url.toString()) {
        return '$_modelName.${qname.localPart}';
      }
      return name;
    }
    final dot = name.indexOf('.');
    if (dot > 0) {
      final qualifier = name.substring(0, dot);
      if (qualifier == 'System' || qualifier == _modelName) return name;
    }
    return '$_modelName.$name';
  }

  /// The local part of a normalized name (`FHIR.Account.Coverage` →
  /// `Account.Coverage`, `System.Quantity` → `Quantity`).
  String localName(String typeName) {
    final normalized = normalizeTypeName(typeName);
    final dot = normalized.indexOf('.');
    return dot > 0 ? normalized.substring(dot + 1) : normalized;
  }

  void _buildIndexes() {
    for (final ti in modelInfo.typeInfo) {
      final String? name;
      if (ti is ClassInfo) {
        name = ti.name;
        final label = ti.label;
        if (label != null) {
          _labelIndex[_casify(label)] = ti;
        }
      } else if (ti is SimpleTypeInfo) {
        name = ti.name;
      } else {
        // Anonymous typeInfo entries (choice/interval/list/tuple) are not
        // name-addressable.
        name = null;
      }
      if (name != null) {
        _typeIndex[_casify(normalizeTypeName(name))] = ti;
      }
    }
    for (final ci in modelInfo.conversionInfo) {
      final from = ci.fromType ?? _namedSpecifierName(ci.fromTypeSpecifier);
      if (from == null) continue;
      _conversionsFrom
          .putIfAbsent(_casify(normalizeTypeName(from)), () => [])
          .add(ci);
    }
  }

  String? _namedSpecifierName(TypeSpecifierModel? specifier) =>
      specifier is NamedTypeSpecifierModel ? specifier.name : null;

  /// Resolves [typeName] (any spelling — bare, qualified, `{uri}`-prefixed)
  /// to its [TypeInfo], or `null` if this model doesn't declare it.
  TypeInfo? resolveTypeName(String typeName) =>
      _typeIndex[_casify(normalizeTypeName(typeName))];

  /// Resolves a retrieve label (e.g. QUICK's `"Encounter, Performed"`) to
  /// its [ClassInfo].
  ClassInfo? resolveLabel(String label) => _labelIndex[_casify(label)];

  /// Resolves the declared type of element [elementName] on [typeName],
  /// walking `baseType` inheritance (e.g. `Observation.id` resolves via
  /// `DomainResource` → `Resource`). Returns `null` when the class or
  /// element is unknown to this model.
  ResolvedElementType? resolveElementType(String typeName, String elementName) {
    final visited = <String>{};
    var current = resolveTypeName(typeName);
    while (current is ClassInfo) {
      final element = current.element
          ?.firstWhereOrNull((e) => _casify(e.name) == _casify(elementName));
      if (element != null) return _elementTypeOf(element);
      final base = current.baseType;
      if (base == null || !visited.add(base)) return null;
      current = resolveTypeName(base);
    }
    return null;
  }

  ResolvedElementType? _elementTypeOf(ClassInfoElement element) {
    final declared = element.elementType ?? element.type;
    if (declared != null) {
      return ResolvedElementType._(
        types: [normalizeTypeName(declared)],
        isList: false,
      );
    }
    return _fromSpecifier(element.elementTypeSpecifier);
  }

  ResolvedElementType? _fromSpecifier(TypeSpecifierModel? specifier) {
    switch (specifier) {
      case NamedTypeSpecifierModel():
        return ResolvedElementType._(
          types: [normalizeTypeName(specifier.name)],
          isList: false,
        );
      case ListTypeSpecifierModel():
        final inner = specifier.elementType != null
            ? ResolvedElementType._(
                types: [normalizeTypeName(specifier.elementType!)],
                isList: false,
              )
            : _fromSpecifier(specifier.elementTypeSpecifier);
        // A bare ListTypeSpecifier (no element type declared) is a list of
        // Any per CQL semantics.
        return ResolvedElementType._(
          types: inner?.types ?? const ['System.Any'],
          isList: true,
        );
      case ChoiceTypeSpecifierModel():
        final names = specifier.choice
                ?.whereType<NamedTypeSpecifierModel>()
                .map((c) => normalizeTypeName(c.name))
                .toList() ??
            const <String>[];
        if (names.isEmpty) return null;
        return ResolvedElementType._(types: names, isList: false);
      case IntervalTypeSpecifierModel():
        final point = specifier.pointType != null
            ? normalizeTypeName(specifier.pointType!)
            : _fromSpecifier(specifier.pointTypeSpecifier)?.types.firstOrNull;
        if (point == null) return null;
        return ResolvedElementType._(
          types: ['Interval<$point>'],
          isList: false,
        );
      default:
        return null;
    }
  }

  /// All implicit conversions declared from [fromType] (normalized lookup).
  /// For the FHIR model these are the FHIRHelpers declarations:
  /// `findConversionsFrom('FHIR.Quantity')` →
  /// `[ToQuantity: FHIR.Quantity → System.Quantity]`.
  List<ConversionInfo> findConversionsFrom(String fromType) =>
      _conversionsFrom[_casify(normalizeTypeName(fromType))] ??
      const <ConversionInfo>[];

  /// The single implicit conversion declared from [fromType], if exactly the
  /// common case of one declaration applies.
  ConversionInfo? findConversionFrom(String fromType) =>
      findConversionsFrom(fromType).firstOrNull;

  /// The declared conversion from [fromType] to [toType], if any.
  ConversionInfo? findConversion(String fromType, String toType) {
    final to = normalizeTypeName(toType);
    return findConversionsFrom(fromType).firstWhereOrNull(
      (c) => c.toType != null && normalizeTypeName(c.toType!) == to,
    );
  }
}

/// The resolved declared type of a class element: one or more (choice)
/// normalized type names plus list-ness.
class ResolvedElementType {
  const ResolvedElementType._({required this.types, required this.isList});

  /// Normalized `Qualifier.LocalName` type names. One entry for simple
  /// elements; multiple for FHIR choice elements (`value[x]`).
  final List<String> types;

  /// `true` when the element is collection-valued (FHIR cardinality `0..*`).
  final bool isList;

  /// `true` when this is a choice type (`Observation.value[x]`).
  bool get isChoice => types.length > 1;

  /// The sole type name — only meaningful when `!isChoice`.
  String get single => types.first;

  @override
  String toString() =>
      '${isList ? 'List<' : ''}${types.join(' | ')}${isList ? '>' : ''}';
}
