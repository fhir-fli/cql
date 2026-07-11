import 'package:cql/src/internal.dart';

/// Operator to check if the value of its argument can be converted to a String value.
/// The operator returns true if the argument is any of the following types: Boolean, Integer, Decimal, DateTime, Date, Time, Quantity, Ratio.
/// If the argument is null, the result is null.
class ConvertsToString extends UnaryExpression {
  ConvertsToString({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ConvertsToString.fromJson(Map<String, dynamic> json) =>
      ConvertsToString(
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

  @override
  String get type => 'ConvertsToString';

  @override
  Future<CqlBoolean?> execute(Map<String, dynamic> context) async {
    final value = await operand.execute(context);
    if (value == null) return null;
    try {
      final result = await ToString(operand: operand).execute(context);
      return CqlBoolean(result != null);
    } catch (_) {
      return CqlBoolean(false);
    }
  }
}
