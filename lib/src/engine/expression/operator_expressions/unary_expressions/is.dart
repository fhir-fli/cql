import 'package:cql/src/internal.dart';
import 'package:ucum/ucum.dart';

/// Is operator allowing testing the type of a result.
///
/// Per the canonical CQL architecture (cqframework `IsEvaluator`), this
/// operator does **not** import any FHIR-version-specific types. CQL
/// System type checks are handled inline; FHIR-namespaced checks delegate
/// to the [ModelResolver] from the execution context.
class Is extends UnaryExpression {
  Is({
    required super.operand,
    this.isTypeSpecifier,
    this.isType,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Is.fromJson(Map<String, dynamic> json) => Is(
        isTypeSpecifier: json['isTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(
                json['isTypeSpecifier'] as Map<String, dynamic>)
            : null,
        isType: json['isType'] != null
            ? QName.fromJson(json['isType'] as String)
            : null,
        operand:
            CqlExpression.fromJson(json['operand']! as Map<String, dynamic>),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
                .toList()
            : null,
        localId: json['localId'] as String?,
        locator: json['locator'] as String?,
        resultTypeName: json['resultTypeName'] as String?,
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(
                json['resultTypeSpecifier'] as Map<String, dynamic>)
            : null,
      );

  /// Type to test against.
  QName? isType;

  /// Type specifier for testing.
  TypeSpecifierExpression? isTypeSpecifier;

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (isType != null) data['isType'] = isType!.toJson();
    data['type'] = type;
    data['operand'] = operand.toJson();
    if (isTypeSpecifier != null) {
      data['isTypeSpecifier'] = isTypeSpecifier!.toJson();
    }
    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (localId != null) data['localId'] = localId;
    if (locator != null) data['locator'] = locator;
    if (resultTypeName != null) data['resultTypeName'] = resultTypeName;
    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return data;
  }

  @override
  String get type => 'Is';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final dynamic value = await operand.execute(context);
    if (value == null) return CqlBoolean(false);

    final modelResolver = requireModelResolver(context);

    if (isTypeSpecifier != null) {
      return CqlBoolean(
        _matchesSpecifier(value, isTypeSpecifier!, modelResolver),
      );
    }
    if (isType != null) {
      return CqlBoolean(_matchesType(value, isType!, modelResolver));
    }
    // No type info — can't check, return true.
    return CqlBoolean(true);
  }

  /// Matches [value] against a [QName] type reference. For
  /// FHIR-namespaced types delegates to the [ModelResolver]; for CQL
  /// System types ([System.<Type>] / unnamespaced) handles inline.
  bool _matchesType(dynamic value, QName qname, ModelResolver mr) {
    if (qname.namespaceURI == 'http://hl7.org/fhir') {
      return mr.is_(value, qname.localPart) ?? false;
    }
    return _matchesSystemType(value, qname.localPart, mr);
  }

  /// CQL System type matching — types defined by the CQL spec itself.
  /// Composite system types (Code/Concept/Interval/etc.) live in
  /// `lib/engine/types/`; primitives in `lib/cql_primitives/`.
  bool _matchesSystemType(dynamic value, String name, ModelResolver mr) {
    switch (name) {
      case 'Boolean':
        return value is CqlBoolean;
      case 'Integer':
        return value is CqlInteger;
      case 'Long':
        return value is CqlLong;
      case 'Decimal':
        return value is CqlDecimal;
      case 'String':
        return value is CqlString || value is String;
      case 'DateTime':
        return value is CqlDateTime;
      case 'Date':
        return value is CqlDate;
      case 'Time':
        return value is CqlTime;
      case 'Quantity':
        return value is ValidatedQuantity ||
            (value is Map<String, dynamic> &&
                value.containsKey('value') &&
                value.containsKey('unit'));
      case 'Ratio':
        return value is ValidatedRatio;
      case 'Code':
        return value is Code || value is CqlCode;
      case 'Concept':
        return value is Concept || value is CqlConcept;
      case 'Interval':
        return value is CqlInterval;
      case 'Vocabulary':
        return value is CqlValueSet || value is CqlCodeSystem;
      case 'ValueSet':
        return value is CqlValueSet;
      case 'CodeSystem':
        return value is CqlCodeSystem;
      case 'Any':
        return value != null;
      default:
        // Defer to the resolver — the type name might live in a model
        // info that the resolver knows about (e.g. user-defined types
        // declared via a `using` clause).
        return mr.is_(value, name) ?? false;
    }
  }

  bool _matchesSpecifier(
    dynamic value,
    TypeSpecifierExpression spec,
    ModelResolver mr,
  ) {
    if (spec is NamedTypeSpecifier) {
      final ns = spec.namespace.namespaceURI;
      final name = spec.namespace.localPart;
      if (ns == 'http://hl7.org/fhir') {
        return mr.is_(value, name) ?? false;
      }
      return _matchesSystemType(value, name, mr);
    }
    if (spec is ListTypeSpecifier && spec.elementType != null) {
      return value is List;
    }
    if (spec is ChoiceTypeSpecifier) {
      for (final choice in spec.choice ?? <TypeSpecifierExpression>[]) {
        if (_matchesSpecifier(value, choice, mr)) return true;
      }
      return false;
    }
    return false;
  }
}
