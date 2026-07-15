import 'package:cql/src/internal.dart';

/// The InValueSet operator returns true if the given code is in the given value
/// set.
///
/// The first argument is expected to be a String, Code, or Concept.
///
/// Note that this operator explicitly requires a ValueSetRef as its valueset
/// argument. This allows for both static analysis of the value set references
/// within an artifact, as well as the implementation of value set membership
/// by the target environment as a service call to a terminology server, if
/// desired.
class InValueSet extends OperatorExpression {
  InValueSet({
    required this.code,
    this.valueset,
    this.valuesetExpression,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory InValueSet.fromJson(Map<String, dynamic> json) {
    return InValueSet(
      code: CqlExpression.fromJson(json['code'] as Map<String, dynamic>),
      valueset: json['valueset'] == null
          ? null
          : ValueSetRef.fromJson(json['valueset'] as Map<String, dynamic>),
      valuesetExpression: json['valuesetExpression'] == null
          ? null
          : CqlExpression.fromJson(
              json['valuesetExpression'] as Map<String, dynamic>,
            ),
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
  final CqlExpression code;
  final ValueSetRef? valueset;
  final CqlExpression? valuesetExpression;

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'type': type,
      'code': code.toJson(),
    };

    if (valueset != null) {
      final valueSetMap = valueset!.toJson()
        ..removeWhere((key, value) => key == 'type' && value == 'ValueSetRef');
      json['valueset'] = valueSetMap;
    }

    if (valuesetExpression != null) {
      json['valuesetExpression'] = valuesetExpression!.toJson();
    }

    if (annotation != null) {
      json['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }

    if (localId != null) {
      json['localId'] = localId;
    }

    if (locator != null) {
      json['locator'] = locator;
    }

    if (resultTypeName != null) {
      json['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      json['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    return json;
  }

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'InValueSet';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['Boolean'];

  @override
  Future<CqlBoolean?> execute(Map<String, dynamic> context) async {
    // Retrieve the CqlLibrary from the context
    final library = context['library'];
    if (library == null || library is! CqlLibrary) {
      throw ArgumentError('CqlLibrary not found in context');
    }
    var valueSetRef = await valueset?.execute(context);
    valueSetRef ??= await valuesetExpression?.execute(context) as CqlValueSet?;
    if (valueSetRef == null) {
      throw ArgumentError('ValueSet not found in context');
    }

    // Code values arrive as CQL System types — the translator inserts
    // FHIRHelpers.ToCode/ToConcept at the membership binding site — but a
    // raw FHIR value can still reach here, so convert at the resolver
    // boundary as well (consistent with AnyInValueSet).
    final codeValue = requireModelResolver(context)
        .toCqlSystemType(await code.execute(context));

    // Local value-set expansions supplied directly in context are the fast,
    // terminology-server-free path.
    final valueSets = context['_valueSets'];
    if (valueSets is Map<String, dynamic>) {
      final expansion = valueSets[valueSetRef.id];
      if (expansion is List) {
        return checkCodeInExpansion(codeValue, expansion);
      }
    }

    // Otherwise resolve membership through the terminology provider (which
    // owns the FHIR ValueSet fetch + checking). Absent a provider, membership
    // is undetermined (CQL null).
    final terminology = getTerminologyProvider(context);
    if (terminology == null) return null;
    return _checkViaProvider(codeValue, valueSetRef, terminology);
  }

  /// Resolves membership of a System code value against [valueSet] via the
  /// [terminology] provider, dispatching on the System code shape.
  static Future<CqlBoolean?> _checkViaProvider(
    dynamic codeValue,
    CqlValueSet valueSet,
    TerminologyProvider terminology,
  ) async {
    Future<bool?> member(String? system, String? code) => terminology
        .codeInValueSet(system: system, code: code, valueSet: valueSet);

    switch (codeValue) {
      case String _:
        return CqlBoolean((await member(null, codeValue)) ?? false);
      case CqlString _:
        return CqlBoolean((await member(null, codeValue.valueString)) ?? false);
      case CqlCode _:
        return CqlBoolean(
          (await member(codeValue.system, codeValue.code)) ?? false,
        );
      case CqlConcept _:
        if (codeValue.codes.isEmpty) return null;
        for (final code in codeValue.codes) {
          if ((await member(code.system, code.code)) ?? false) {
            return CqlBoolean(true);
          }
        }
        return CqlBoolean(false);
      default:
        throw ArgumentError('Invalid code type');
    }
  }

  /// Checks if a code value is in a local value set expansion list.
  static CqlBoolean? checkCodeInExpansion(
    dynamic codeValue,
    List<dynamic> expansion,
  ) {
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
        return CqlBoolean(matches(null, codeValue));
      case CqlCode _:
        return CqlBoolean(matches(codeValue.system, codeValue.code));
      case CqlConcept _:
        if (codeValue.codes.isEmpty) return null;
        for (final c in codeValue.codes) {
          if (matches(c.system, c.code)) return CqlBoolean(true);
        }
        return CqlBoolean(false);
      default:
        return CqlBoolean(false);
    }
  }
}
