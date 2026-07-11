import 'package:cql/src/internal.dart';

/// Operator to convert a value of type Code to a Concept value with the given Code.
/// If the Code has a display value, the resulting Concept will have the same display value.
/// If the argument is null, the result is null.
class ToConcept extends UnaryExpression {
  ToConcept({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ToConcept.fromJson(Map<String, dynamic> json) => ToConcept(
        operand:
            CqlExpression.fromJson(json['operand'] as Map<String, dynamic>),
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

  @override
  String get type => 'ToConcept';
  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'operand': operand.toJson(),
    };

    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }

    if (localId != null) {
      data['localId'] = localId;
    }

    if (locator != null) {
      data['locator'] = locator;
    }

    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    return data;
  }

  @override
  Future<CqlConcept?> execute(Map<String, dynamic> context) async {
    // Evaluate the operand to get the code value
    final value = await operand.execute(context);

    // If the input is null, return null
    if (value == null) {
      return null;
    }

    if (value is List && value.isEmpty) return null;

    final concept = _toConcept(value, getModelResolver(context));
    if (concept != null) return concept;

    // If not a recognized type, return null or throw an exception
    throw ArgumentError(
      'Cannot convert value of type ${value.runtimeType} to Concept',
    );
  }

  /// Converts [value] to a [CqlConcept]: System Concept/Code directly, a
  /// bare string as a code with no system, single-element lists by their
  /// element, and model types (FHIR Coding/CodeableConcept) via the
  /// resolver's boundary conversion.
  CqlConcept? _toConcept(dynamic value, ModelResolver? mr) {
    if (value is CqlConcept) return value;
    if (value is CqlCode) {
      return CqlConcept(codes: [value], display: value.display);
    }
    if (value is String) {
      return CqlConcept(codes: [CqlCode(code: value)]);
    }
    if (value is List) {
      if (value.length != 1) return null;
      return _toConcept(value.first, mr);
    }
    final converted = mr?.toCqlSystemType(value);
    if (converted == null || identical(converted, value)) return null;
    return _toConcept(converted, null);
  }
}
