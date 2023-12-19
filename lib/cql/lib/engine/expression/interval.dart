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

  factory IntervalExpression.fromJson(Map<String, dynamic> json) =>
      IntervalExpression(
        low: json['low'] != null ? Expression.fromJson(json['low']) : null,
        lowClosedExpression: json['lowClosedExpression'] != null
            ? Expression.fromJson(json['lowClosedExpression'])
            : null,
        high: json['high'] != null ? Expression.fromJson(json['high']) : null,
        highClosedExpression: json['highClosedExpression'] != null
            ? Expression.fromJson(json['highClosedExpression'])
            : null,
        lowClosed: json['lowClosed'] ?? true,
        highClosed: json['highClosed'] ?? true,
      );

  @override
  Map<String, dynamic> toJson() => {
        'low': low?.toJson(),
        'lowClosedExpression': lowClosedExpression?.toJson(),
        'high': high?.toJson(),
        'highClosedExpression': highClosedExpression?.toJson(),
        'lowClosed': lowClosed,
        'highClosed': highClosed,
      };
}
