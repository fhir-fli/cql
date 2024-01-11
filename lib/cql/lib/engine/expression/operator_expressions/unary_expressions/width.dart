import '../../../../cql.dart';

/// Operator to return the width of an interval (End(i) - Start(i)).
/// Note: This operator is not defined for intervals of type Date, DateTime, and Time.
/// If the argument is null, the result is null.
class Width extends UnaryExpression {
  Width({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Width.fromJson(Map<String, dynamic> json) => Width(
        operand: Expression.fromJson(json['operand']),
      );

  @override
  String get type => 'Width';
}
