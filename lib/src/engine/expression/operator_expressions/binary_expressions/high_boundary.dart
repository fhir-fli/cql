import 'package:cql/src/internal.dart';

/// Operator to return the greatest possible value of the input to the
/// specified precision.
/// The operator can be used with Decimal, Date, DateTime, and Time values.
/// If the input value is null, the result is null.
class HighBoundary extends BinaryExpression {
  HighBoundary({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory HighBoundary.fromJson(Map<String, dynamic> json) => HighBoundary(
        operand: List<CqlExpression>.from(
          (json['operand'] as List<dynamic>).map(
            (x) => CqlExpression.fromJson(x as Map<String, dynamic>),
          ),
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
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'type': type,
      'operand': operand.map((x) => x.toJson()).toList(),
    };
    if (annotation != null) {
      json['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (localId != null) {
      json['localId'] = localId;
    }
    if (locator != null) {
      json['locator'] = locator;
    }
    if (resultTypeName != null) {
      json['resultTypeName'] = resultTypeName;
    }
    if (resultTypeSpecifier != null) {
      json['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return json;
  }

  @override
  String get type => 'HighBoundary';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final value = await operand[0].execute(context);
    final precisionValue = await operand[1].execute(context);
    if (value == null) return null;
    final targetPrecision =
        (precisionValue is CqlInteger) ? precisionValue.valueNum!.toInt() : 8;

    if (value is CqlDecimal) {
      return _highBoundaryDecimal(value, targetPrecision);
    } else if (value is CqlDate) {
      return _highBoundaryDate(value, targetPrecision);
    } else if (value is CqlDateTime) {
      return _highBoundaryDateTime(value, targetPrecision);
    } else if (value is CqlTime) {
      return _highBoundaryTime(value, targetPrecision);
    }
    return value;
  }

  static CqlDecimal _highBoundaryDecimal(CqlDecimal value, int precision) {
    final str = value.valueString ?? '0';
    final dotIdx = str.indexOf('.');
    final currentDigits = dotIdx == -1 ? 0 : str.length - dotIdx - 1;
    if (currentDigits >= precision) return value;
    final base = dotIdx == -1 ? '$str.' : str;
    final padded = base.padRight(
      (dotIdx == -1 ? str.length + 1 : dotIdx + 1) + precision,
      '9',
    );
    return CqlDecimal(double.parse(padded));
  }

  /// Precision mapping for Date: 4=year, 6=month, 8=day
  static CqlDate _highBoundaryDate(CqlDate value, int precision) {
    final year = value.year;
    if (year == null) return value;
    final month = value.month ?? (precision >= 6 ? 12 : null);
    final day = value.day ??
        (precision >= 8 && month != null
            ? DateTime(year, month + 1, 0).day
            : null);
    return CqlDate.fromUnits(year: year, month: month, day: day);
  }

  /// Precision mapping for DateTime:
  /// 4=year, 6=month, 8=day, 10=hour, 12=minute, 14=second, 17=millisecond
  static CqlDateTime _highBoundaryDateTime(CqlDateTime value, int precision) {
    final year = value.year;
    if (year == null) return value;
    final month = value.month ?? (precision >= 6 ? 12 : null);
    final day = value.day ??
        (precision >= 8 && month != null
            ? DateTime(year, month + 1, 0).day
            : null);
    final hour = value.hour ?? (precision >= 10 ? 23 : null);
    final minute = value.minute ?? (precision >= 12 ? 59 : null);
    final second = value.second ?? (precision >= 14 ? 59 : null);
    final millisecond = value.millisecond ?? (precision >= 17 ? 999 : null);
    return CqlDateTime.fromUnits(
      year: year,
      month: month,
      day: day,
      hour: hour,
      minute: minute,
      second: second,
      millisecond: millisecond,
      timeZoneOffset: value.timeZoneOffset,
    );
  }

  /// Precision mapping for Time: 2=hour, 4=minute, 6=second, 9=millisecond
  static CqlTime _highBoundaryTime(CqlTime value, int precision) {
    final hour = value.hour;
    if (hour == null) return value;
    final minute = value.minute ?? (precision >= 4 ? 59 : null);
    final second = value.second ?? (precision >= 6 ? 59 : null);
    final millisecond = value.millisecond ?? (precision >= 9 ? 999 : null);
    return CqlTime.fromUnits(
      hour: hour,
      minute: minute,
      second: second,
      millisecond: millisecond,
    );
  }
}
