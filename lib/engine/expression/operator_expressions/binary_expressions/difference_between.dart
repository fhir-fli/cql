import '../../../../cql.dart';

/// Operator to return the number of boundaries crossed for the specified
/// precision between the first and second arguments.
/// If the first argument is after the second argument, the result is negative.
/// Because this operation is only counting boundaries crossed, the result is
/// always an integer.
/// If either argument is null, the result is null.
///
/// Signature:
///
/// difference in _precision_ between(low Date, high Date) Integer
/// difference in _precision_ between(low DateTime, high DateTime) Integer
/// difference in _precision_ between(low Time, high Time) Integer
/// Description:
///
/// The difference-between operator returns the number of boundaries crossed
/// for the specified precision between the first and second arguments. If the
/// first argument is after the second argument, the result is negative. The
/// result of this operation is always an integer; any fractional boundaries
/// are dropped.
///
/// For Date values, precision must be one of: years, months, weeks, or days.
///
/// For DateTime values, precision must be one of: years, months, weeks, days,
/// hours, minutes, seconds, or milliseconds.
///
/// For Time values, precision must be one of: hours, minutes, seconds, or
/// milliseconds.
///
/// For calculations involving weeks, Sunday is considered to be the first day
/// of the week for the purposes of determining the number of boundaries crossed.
///
/// When this operator is called with both Date and DateTime inputs, the Date
/// values will be implicitly converted to DateTime as defined by the
/// ToDateTime operator.
///
/// When computing the difference between DateTime values with different
/// timezone offsets, implementations should normalize to the timezone offset
/// of the evaluation request timestamp, but only when the comparison precision
/// is hours, minutes, seconds, or milliseconds.
///
/// If either argument is null, the result is null.
///
/// The following examples illustrate the behavior of the difference-between operator:
///
/// define "DifferenceInMonths": difference in months between @2012-01-01 and @2012-02-01 // 1
/// define "UncertainDifferenceInMonths": difference in months between @2012-01-02 and @2012 // [0, 11]
/// define "DifferenceIsNull": difference in months between @2012-01-01 and null
class DifferenceBetween extends BinaryExpression {
  final CqlDateTimePrecision precision;

  DifferenceBetween({
    required this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory DifferenceBetween.fromJson(Map<String, dynamic> json) =>
      DifferenceBetween(
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
  String get type => 'DifferenceBetween';
}
