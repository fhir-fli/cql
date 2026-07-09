import 'package:cql/src/internal.dart';

/// Operator to return the ending point of an interval.
/// If the high boundary of the interval is open, this operator returns the
/// Predecessor of the high value of the interval.
/// If the high boundary of the interval is closed and the high value of the
/// interval is not null, this operator returns the high value of the interval.
/// Otherwise, the result is the maximum value of the point type of the interval.
/// If the argument is null, the result is null.
/// Signature:
///
/// end of(argument `Interval<T>`) T
class End extends UnaryExpression {
  End({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory End.fromJson(Map<String, dynamic> json) => End(
        operand: CqlExpression.fromJson(json['operand']!),
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
  String get type => 'End';

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'operand': operand.toJson(),
    };
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
  List<String> getReturnTypes(CqlLibrary library) =>
      operand.getReturnTypes(library);

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final raw = await operand.execute(context);
    if (raw == null) return null;

    // Convert FHIR-typed values (e.g. Period) to CQL System types at the
    // boundary. Already-CQL values pass through unchanged.
    final mr = requireModelResolver(context);
    final value = mr.toCqlSystemType(raw);

    if (value is CqlInterval) return value.getEnd();
    if (value is CqlDateTime || value is CqlDate) {
      // Point value — start and end are the same.
      return value;
    }
    throw Exception(
      'Cannot perform end operator with argument of type '
      "'${value.runtimeType}'.",
    );
  }
}
