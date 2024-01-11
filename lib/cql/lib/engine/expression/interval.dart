import '../../cql.dart';

/// Interval selector defining an interval value.
/// The Interval selector defines an interval value. An interval must be
/// defined using a point type that supports comparison, as well as Successor
/// and Predecessor operations, and Minimum and Maximum Value operations.
///
/// The low and high bounds of the interval may each be defined as open or
/// closed. Following standard terminology usage in interval mathematics, an
/// open interval is defined to exclude the specified point, whereas a closed
/// interval includes the point. The default is closed, indicating an inclusive
/// interval.
///
/// The low and high elements are both optional. If the low element is not
/// specified, the low bound of the resulting interval is null. If the high
/// element is not specified, the high bound of the resulting interval is null.
///
/// The static type of the low bound determines the type of the interval, and
/// the high bound must be of the same type.
///
/// If the low bound of the interval is null and open, the low bound of the
/// interval is interpreted as unknown, and computations involving the low
/// boundary will result in null.
///
/// If the low bound of the interval is null and closed, the interval is
/// interpreted to start at the minimum value of the point type, and
/// computations involving the low boundary will be performed with that value.
///
/// If the high bound of the interval is null and open, the high bound of the
/// interval is unknown, and computations involving the high boundary will
/// result in null.
///
/// If the high bound of the interval is null and closed, the interval is
/// interpreted to end at the maximum value of the point type, and computations
/// involving the high boundary will be performed with that interpretation.
class IntervalExpression extends Expression {
  dynamic defaultPointType;

  /// High bound expression of the interval.
  Expression? high;

  /// High bound closed status, defaults to true.
  bool highClosed = true;

  /// High bound closed expression of the interval.
  Expression? highClosedExpression;

  /// Low bound expression of the interval.
  Expression? low;

  /// Low bound closed status, defaults to true.
  bool lowClosed = true;

  /// Low bound closed expression of the interval.
  Expression? lowClosedExpression;

  IntervalExpression({
    this.lowClosed = true,
    this.highClosed = true,
    this.low,
    this.lowClosedExpression,
    this.high,
    this.highClosedExpression,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
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
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'lowClosed': lowClosed,
      'highClosed': highClosed,
      'type': type,
    };
    if (low != null) json['low'] = low!.toJson();
    if (lowClosedExpression != null) {
      json['lowClosedExpression'] = lowClosedExpression!.toJson();
    }
    if (high != null) json['high'] = high!.toJson();
    if (highClosedExpression != null) {
      json['highClosedExpression'] = highClosedExpression!.toJson();
    }
    return json;
  }

  @override
  String get type => 'Interval';
}
