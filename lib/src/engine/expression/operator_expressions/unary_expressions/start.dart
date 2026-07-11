import 'package:cql/src/internal.dart';

/// Operator to return the starting point of an interval.
/// If the low boundary of the interval is open, this operator returns the
/// Successor of the low value of the interval.
/// If the low boundary of the interval is closed and the low value of the
/// interval is not null, this operator returns the low value of the interval.
/// Otherwise, the result is the minimum value of the point type of the interval.
/// If the argument is null, the result is null.
/// Signature:
///
/// start of(argument `Interval<T>`) T
class Start extends UnaryExpression {
  Start({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Start.fromJson(Map<String, dynamic> json) => Start(
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
  String get type => 'Start';

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

    if (value is CqlInterval) return value.getStart();
    if (value is CqlDateTime || value is CqlDate) {
      // Point value — start and end are the same.
      return value;
    }
    throw Exception(
      'Cannot perform start operator with argument of type '
      "'${value.runtimeType}'.",
    );
  }
}
