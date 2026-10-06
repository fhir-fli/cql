import 'package:cql/src/internal.dart';

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
class IntervalExpression extends CqlExpression {
  IntervalExpression({
    this.lowClosed = true,
    this.highClosed = true,
    this.low,
    this.high,
    this.lowClosedExpression,
    this.highClosedExpression,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory IntervalExpression.fromJson(Map<String, dynamic> json) =>
      IntervalExpression(
        low: json['low'] != null
            ? CqlExpression.fromJson(json['low'] as Map<String, dynamic>)
            : null,
        high: json['high'] != null
            ? CqlExpression.fromJson(json['high'] as Map<String, dynamic>)
            : null,
        lowClosed: (json['lowClosed'] as bool?) ?? true,
        highClosed: (json['highClosed'] as bool?) ?? true,
        lowClosedExpression: json['lowClosedExpression'] == null
            ? null
            : CqlExpression.fromJson(
                json['lowClosedExpression'] as Map<String, dynamic>,
              ),
        highClosedExpression: json['highClosedExpression'] == null
            ? null
            : CqlExpression.fromJson(
                json['highClosedExpression'] as Map<String, dynamic>,
              ),
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
                json['resultTypeSpecifier'] as Map<String, dynamic>,
              )
            : null,
      );
  dynamic defaultPointType;

  /// High bound expression of the interval.
  CqlExpression? high;

  /// High bound closed status, defaults to true.
  bool highClosed = true;

  /// Low bound expression of the interval.
  CqlExpression? low;

  /// Low bound closed status, defaults to true.
  bool lowClosed = true;

  /// expression.xsd Interval: `lowClosedExpression` and
  /// `highClosedExpression` (minOccurs=0) give the closed indicators as
  /// expressions. The reference translator writes them when it converts an
  /// untyped interval to a typed one (`Interval(null, null)` compared with
  /// an `Interval<Integer>`: `Property lowClosed` of the source). Until
  /// 2026-10-06 the reader dropped both (3 nodes each in the reference ELM).
  /// When present, the expression's Boolean value is the closed indicator;
  /// the specification gives no rule for a null result (unknown), and the
  /// attribute is used then.
  CqlExpression? lowClosedExpression;
  CqlExpression? highClosedExpression;

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{
      'lowClosed': lowClosed,
      'highClosed': highClosed,
      'type': type,
    };
    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('low', low?.toJson());
    writeNotNull('lowClosedExpression', lowClosedExpression?.toJson());
    writeNotNull('high', high?.toJson());
    writeNotNull('highClosedExpression', highClosedExpression?.toJson());
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  @override
  String get type => 'Interval';

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    final lowReturnTypes = low?.getReturnTypes(library) ?? [];
    final highReturnTypes = high?.getReturnTypes(library) ?? [];
    if (lowReturnTypes.length == 1 &&
        highReturnTypes.length == 1 &&
        lowReturnTypes.first == highReturnTypes.first) {
      return ['CqlInterval<${lowReturnTypes.first}>'];
    }
    return ['CqlInterval'];
  }

  @override
  Future<CqlInterval<dynamic>?> execute(Map<String, dynamic> context) async {
    final low = await this.low?.execute(context);
    final high = await this.high?.execute(context);
    if (low == null && high == null) {
      // Distinguish "null interval" from "interval with null (unknown)
      // boundaries":
      // - Interval[null, null] with LiteralNull expressions → null interval
      // - Interval[null as Integer, null as Integer] with typed expressions
      //   → unbounded interval
      final lowIsLiteralNull = this.low == null || this.low is LiteralNull;
      final highIsLiteralNull = this.high == null || this.high is LiteralNull;
      if (lowIsLiteralNull && highIsLiteralNull) {
        return null;
      }
    }
    final lowClosedValue = await lowClosedExpression?.execute(context);
    final highClosedValue = await highClosedExpression?.execute(context);
    return CqlInterval(
      low: low,
      lowClosed: lowClosedValue is CqlBoolean
          ? lowClosedValue.valueBoolean ?? lowClosed
          : lowClosed,
      high: high,
      highClosed: highClosedValue is CqlBoolean
          ? highClosedValue.valueBoolean ?? highClosed
          : highClosed,
      state: context,
    );
  }

  @override
  String toString() {
    final lowString = low?.toString() ?? 'null';
    final highString = high?.toString() ?? 'null';
    return 'IntervalExpression(low: $lowString, high: $highString)';
  }
}
