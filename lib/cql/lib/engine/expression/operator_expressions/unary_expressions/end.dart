import '../../../../cql.dart';

/// Operator to return the ending point of an interval.
/// If the high boundary of the interval is open, this operator returns the Predecessor of the high value of the interval.
/// If the high boundary of the interval is closed and the high value of the interval is not null, this operator returns the high value of the interval. Otherwise, the result is the maximum value of the point type of the interval.
/// If the argument is null, the result is null.
class End extends UnaryExpression {
  End({required super.operand});

  factory End.fromJson(Map<String, dynamic> json) =>
      End(operand: Expression.fromJson(json['operand']!));

  @override
  String get type => 'End';
}
