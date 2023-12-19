import '../../../../cql.dart';

/// Operator to return the starting point of an interval.
/// If the low boundary of the interval is open, this operator returns the Successor of the low value of the interval.
/// If the low boundary of the interval is closed and the low value of the interval is not null, this operator returns the low value of the interval. Otherwise, the result is the minimum value of the point type of the interval.
/// If the argument is null, the result is null.
class Start extends UnaryExpression {
  Start({required super.operand});

  factory Start.fromJson(Map<String, dynamic> json) => Start(
        operand: Expression.fromJson(json['operand']),
      );

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand.toJson(),
      };
}
