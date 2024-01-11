import '../../../../cql.dart';

/// Operator to convert the value of its argument to a Quantity value.
/// The operator may be used with Integer, Decimal, Ratio, or String values.
/// For String values, the operator accepts strings using the following format:
/// (+|-)?#0(.0#)?('<unit>')?, where it's an optional polarity indicator,
/// followed by any number of digits (including none), optionally followed by a decimal point,
/// at least one digit, and any number of additional digits, all optionally followed by a unit designator.
/// If the input string is not formatted correctly or cannot be interpreted as a valid Quantity value, the result is null.
/// For Integer and Decimal values, the result is a Quantity with the value of the integer or decimal input, and the default unit ('1').
/// For Ratio values, the operation is equivalent to the result of dividing the numerator of the ratio by the denominator.
/// If the argument is null, the result is null.
class ToQuantity extends UnaryExpression {
  ToQuantity({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ToQuantity.fromJson(Map<String, dynamic> json) => ToQuantity(
        operand: Expression.fromJson(json['operand']),
      );

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand.toJson(),
      };
}
