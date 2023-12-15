import '../../cql.dart';

/// Interval selector defining an interval value.
class IntervalExpression extends Expression {
  /// Low bound expression of the interval.
  Expression? low;

  /// Low bound closed expression of the interval.
  Expression? lowClosedExpression;

  /// High bound expression of the interval.
  Expression? high;

  /// High bound closed expression of the interval.
  Expression? highClosedExpression;

  /// Low bound closed status, defaults to true.
  bool lowClosed = true;

  /// High bound closed status, defaults to true.
  bool highClosed = true;

  dynamic defaultPointType;

  IntervalExpression({
    this.low,
    this.lowClosedExpression,
    this.high,
    this.highClosedExpression,
    this.lowClosed = true,
    this.highClosed = true,
  });
}
