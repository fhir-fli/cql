import 'package:collection/collection.dart';

import 'package:cql/src/internal.dart';

/// Expression that references an unresolved or resolved identifier.
class IdentifierRef extends Ref {
  IdentifierRef({
    required super.name,
    super.libraryName,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory IdentifierRef.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    if (name == null) {
      throw ArgumentError('JSON name cannot be null');
    }

    return IdentifierRef(
      name: name as String,
      libraryName: json['libraryName'] as String?,
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
              json['resultTypeSpecifier'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  @override
  String get type => 'IdentifierRef';

  @override
  Map<String, dynamic> toJson() {
    final val = super.toJson();
    return val;
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    // Cross-library resolution: if libraryName is set, resolve from the
    // included lib
    if (libraryName != null) {
      final cacheKey = '$libraryName.$name';
      if (context.containsKey(cacheKey)) {
        return context[cacheKey];
      }
      final library = context['library'];
      if (library is CqlLibrary) {
        final includedLib = await library.resolveIncludedLibrary(libraryName!);
        if (includedLib != null) {
          // Check statements first
          final def = includedLib.statements?.def
              .firstWhereOrNull((d) => d.name == name);
          if (def != null) {
            final savedLibrary = context['library'];
            context['library'] = includedLib;
            final result = await def.expression?.execute(context);
            context['library'] = savedLibrary;
            context[cacheKey] = result;
            return result;
          }
          // Check valueset definitions
          final vsDef = includedLib.valueSets?.def
              .firstWhereOrNull((d) => d.name == name);
          if (vsDef != null) {
            final result = CqlValueSet.fromValueSetDef(vsDef);
            context[cacheKey] = result;
            return result;
          }
          // Check code definitions
          try {
            final codeDef = includedLib.resolveCodeRef(name);
            if (codeDef != null) {
              context[cacheKey] = codeDef;
              return codeDef;
            }
          } catch (_) {}
        }
      }
      return null;
    }

    // Direct lookup in context
    if (context.containsKey(name)) {
      return context[name];
    }

    // Lazy evaluation: if the name matches a library expression definition,
    // evaluate it now (handles forward references).
    final library = context['library'];
    if (library is CqlLibrary && library.statements != null) {
      for (final def in library.statements!.def) {
        if (def.name == name) {
          final result = await def.expression?.execute(context);
          context[name] = result;
          return result;
        }
      }
    }

    // In sort/return clauses, identifiers implicitly resolve against source
    // elements. The context has aliased entries like {'O': <observation>}.
    // Try each aliased resource (raw FHIR JSON or a typed model object) and
    // see if it carries the property.
    final mr = getModelResolver(context);
    for (final entry in context.entries) {
      final val = entry.value;
      final map = val is Map<String, dynamic> && val.containsKey('resourceType')
          ? val
          : mr?.toElementMap(val);
      if (map != null && map.containsKey(name)) {
        return map[name];
      }
    }

    return null;
  }
}
