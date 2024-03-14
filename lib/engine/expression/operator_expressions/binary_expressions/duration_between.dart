import 'package:fhir/primitive_types/primitive_types.dart';

import '../../../../cql.dart';

/// Operator to return the number of whole calendar periods for the specified
/// precision between the first and second arguments.
/// If the first argument is after the second argument, the result is negative.
/// The result of this operation is always an integer; any fractional periods
/// are dropped.
/// If either argument is null, the result is null.
/// Signature:
///
/// _duration_ between(low Date, high Date) Integer
/// _duration_ between(low DateTime, high DateTime) Integer
/// _duration_ between(low Time, high Time) Integer
/// Description:
///
/// The duration-between operator returns the number of whole calendar periods for the specified precision between the first and second arguments. If the first argument is after the second argument, the result is negative. The result of this operation is always an integer; any fractional periods are dropped.
///
/// For Date values, duration must be one of: years, months, weeks, or days.
///
/// For DateTime values, duration must be one of: years, months, weeks, days,
/// hours, minutes, seconds, or milliseconds.
///
/// For Time values, duration must be one of: hours, minutes, seconds, or
/// milliseconds.
///
/// When this operator is called with both Date and DateTime inputs, the Date
/// values will be implicitly converted to DateTime as defined by the ToDateTime
/// operator.
///
/// When computing the duration between DateTime values with different timezone
/// offsets, implementations should normalize to the timezone offset of the
/// evaluation request timestamp, but only when the comparison precision is
/// hours, minutes, seconds, or milliseconds.
///
/// If either argument is null, the result is null.
///
/// The following examples illustrate the behavior of the duration-between
/// operator:
///
/// define "DurationInMonths": months between @2012-01-01 and @2012-02-01 // 1
/// define "UncertainDurationInMonths": months between @2012-01-02 and @2012 // [0, 10]
/// define "DurationIsNull": months between @2012-01-01 and null
class DurationBetween extends BinaryExpression {
  final CqlDateTimePrecision precision;

  DurationBetween({
    required this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory DurationBetween.fromJson(Map<String, dynamic> json) =>
      DurationBetween(
        precision: CqlDateTimePrecisionExtension.fromJson(json['precision']),
        operand: List<CqlExpression>.from(
          json['operand'].map(
            (x) => CqlExpression.fromJson(x),
          ),
        ),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'],
        locator: json['locator'],
        resultTypeName: json['resultTypeName'],
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'precision': precision.toJson(),
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
  String get type => 'DurationBetween';

  @override
  List<Type> getReturnTypes(Library library) => [FhirInteger];

  @override
  FhirInteger? execute(Map<String, dynamic> context) {
    if (operand.length != 2) {
      throw ArgumentError('Binary expression must have 2 operands');
    }
    final low = operand[0].execute(context);
    final high = operand[1].execute(context);
    if (low == null || high == null) {
      return null;
    } else if (low is FhirDateTimeBase) {
      if (high is FhirDateTimeBase) {
        if (low.isValid && high.isValid) {
          final result = ExtendedDuration(
            years: high.year - low.year,
            months: high.month - low.month,
            days: high.day - low.day,
            hours: high.hour - low.hour,
            minutes: high.minute - low.minute,
            seconds: high.second - low.second,
            milliseconds: high.millisecond - low.millisecond,
          );
          switch (precision) {
            case CqlDateTimePrecision.year:
              return FhirInteger(result.years);
            case CqlDateTimePrecision.month:
              return FhirInteger(result.months);
            case CqlDateTimePrecision.week:
              return FhirInteger(result.weeks);
            case CqlDateTimePrecision.day:
              return FhirInteger(result.days);
            case CqlDateTimePrecision.hour:
              return FhirInteger(result.hours);
            case CqlDateTimePrecision.minute:
              return FhirInteger(result.minutes);
            case CqlDateTimePrecision.second:
              return FhirInteger(result.seconds);
            case CqlDateTimePrecision.millisecond:
              return FhirInteger(result.milliseconds);
          }
        } else {
          throw CqlException(
              message: 'DurationBetween must two valid arguments. This was '
                  'low (${low.isValid ? "valid" : "invalid"}) and'
                  'high (${high.isValid ? "valid" : "invalid"})');
        }
      } else {
        throw CqlException(
            message: 'DurationBetween must have comparable arguments, but '
                'was passed ${low.runtimeType} and ${high.runtimeType}');
      }
    } else if (low is FhirTime) {
      if (high is FhirTime) {
        if (low.isValid && high.isValid) {
          final result = ExtendedDuration(
            hours: (high.hour ?? 0) - (low.hour ?? 0),
            minutes: (high.minute ?? 0) - (low.minute ?? 0),
            seconds: (high.second ?? 0) - (low.second ?? 0),
            milliseconds: (high.millisecond ?? 0) - (low.millisecond ?? 0),
          );
          switch (precision) {
            case CqlDateTimePrecision.hour:
              return FhirInteger(result.hours);
            case CqlDateTimePrecision.minute:
              return FhirInteger(result.minutes);
            case CqlDateTimePrecision.second:
              return FhirInteger(result.seconds);
            case CqlDateTimePrecision.millisecond:
              return FhirInteger(result.milliseconds);
            default:
              throw CqlException(
                  message: 'DurationBetween precsion for times must be hours, '
                      'minutes, seconds, or milliseconds, but was $precision');
          }
        } else {
          throw CqlException(
              message: 'DurationBetween must two valid arguments. This was '
                  'low (${low.isValid ? "valid" : "invalid"}) and'
                  'high (${high.isValid ? "valid" : "invalid"})');
        }
      }
    }
    throw CqlException(
        message: 'DurationBetween requires proper arguments,'
            'but was passed low (${low.runtimeType}) and high (${high.runtimeType})');
  }
}
