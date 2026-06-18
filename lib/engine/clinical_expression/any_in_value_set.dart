import 'package:cql/cql.dart';

/// The AnyInValueSet operator returns true if any of the given codes are in
/// the given value set.
///
/// The first argument is expected to be a list of String, Code, or Concept.
///
/// Note that this operator explicitly requires a ValueSetRef as its valueset
/// argument. This allows for both static analysis of the value set references
/// within an artifact, as well as the implementation of value set membership
/// by the target environment as a service call to a terminology server, if
/// desired.
class AnyInValueSet extends OperatorExpression {
  final CqlExpression codes;
  final ValueSetRef? valueset;
  final CqlExpression? valuesetExpression;

  AnyInValueSet({
    required this.codes,
    this.valueset,
    this.valuesetExpression,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory AnyInValueSet.fromJson(Map<String, dynamic> json) => AnyInValueSet(
        codes: CqlExpression.fromJson(json['codes']!),
        valueset: json['valueset'] == null
            ? null
            : ValueSetRef.fromJson(json['valueset']!),
        valuesetExpression: json['valuesetExpression'] == null
            ? null
            : CqlExpression.fromJson(json['valuesetExpression']!),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'],
        locator: json['locator'],
        resultTypeName: json['resultTypeName'],
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'type': type,
      'codes': codes.toJson(),
    };
    if (valueset != null) json['valueset'] = valueset!.toJson();
    if (valuesetExpression != null) {
      json['valuesetExpression'] = valuesetExpression!.toJson();
    }
    if (annotation != null) {
      json['annotation'] = annotation!.map((x) => x.toJson()).toList();
    }
    if (localId != null) json['localId'] = localId;
    if (locator != null) json['locator'] = locator;
    if (resultTypeName != null) json['resultTypeName'] = resultTypeName;
    if (resultTypeSpecifier != null) {
      json['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return json;
  }

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'AnyInValueSet';

  @override
  Future<CqlBoolean?> execute(Map<String, dynamic> context) async {
    final mr = requireModelResolver(context);
    final codesValue = await codes.execute(context);
    if (codesValue == null) return null;
    final codesList = codesValue is List ? codesValue : [codesValue];

    CqlValueSet? valueSetRef = await valueset?.execute(context);
    valueSetRef ??= await valuesetExpression?.execute(context);
    if (valueSetRef == null) return null;

    // Check context['_valueSets'] for local value set expansions.
    final valueSetsMap = context['_valueSets'];
    if (valueSetsMap is Map<String, dynamic>) {
      final expansion = valueSetsMap[valueSetRef.id];
      if (expansion is List) {
        for (final raw in codesList) {
          if (raw == null) continue;
          // Convert any FHIR-typed code values to CQL System types at the boundary.
          final codeItem = mr.toCqlSystemType(raw);
          if (_codeInExpansion(codeItem, expansion)) {
            return CqlBoolean(true);
          }
        }
        return CqlBoolean(false);
      }
    }
    return null;
  }

  /// Tests a single code value against the expansion list. Expects [codeValue]
  /// to already be a CQL System type (Code/Concept/String) — the resolver
  /// performs that conversion at the boundary.
  static bool _codeInExpansion(dynamic codeValue, List<dynamic> expansion) {
    bool matches(String? system, String? code) {
      for (final ec in expansion) {
        if (ec is Map<String, dynamic> &&
            code == ec['code']?.toString() &&
            system == ec['system']?.toString()) {
          return true;
        }
      }
      return false;
    }

    switch (codeValue) {
      case String _:
        return matches(null, codeValue);
      case CqlString _:
        return matches(null, codeValue.valueString);
      case CqlCode _:
        return matches(codeValue.system, codeValue.code);
      case CqlConcept _:
        for (final c in codeValue.codes) {
          if (matches(c.system, c.code)) return true;
        }
        return false;
      default:
        // Raw FHIR types should have been converted by toCqlSystemType.
        // If we see one here, surface that as a resolver bug.
        return false;
    }
  }
}
