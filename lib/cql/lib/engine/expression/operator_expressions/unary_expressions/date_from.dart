import '../../../../cql.dart';

/// Operator to return the date (with no time components specified) of the argument.
/// If the argument is null, the result is null.
class DateFrom extends UnaryExpression {
  DateFrom({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory DateFrom.fromJson(Map<String, dynamic> json) =>
      DateFrom(operand: Expression.fromJson(json['operand']!));

  @override
  String get type => 'DateFrom';
}
