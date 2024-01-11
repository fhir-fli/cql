import '../../../../cql.dart';

/// Operator to convert the value of its argument to a Boolean value.
/// The operator accepts various string representations of true and false.
/// If the input cannot be interpreted as a valid Boolean value, the result is null.
/// If the argument is null, the result is null.
class ToBoolean extends UnaryExpression {
  ToBoolean({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ToBoolean.fromJson(Map<String, dynamic> json) => ToBoolean(
        operand: Expression.fromJson(json['operand']),
      );

  @override
  String get type => 'ToBoolean';
}
