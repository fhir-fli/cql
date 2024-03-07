import 'package:fhir/primitive_types/primitive_types.dart';

import '../../../../cql.dart';

/// Operator to compare two Date, DateTime, or Time values to the specified
/// precision for equality.
/// The SameAs operator compares values starting from the year or hour component
/// down to the specified precision.
/// If all values are specified and have the same value for each component, then
/// the result is true.
/// If a compared component is specified in both dates but the values are not
/// the same, then the result is false.
/// Otherwise, the result is null, as there is not enough information to make a
/// determination.
/// If no precision is specified, the comparison is performed beginning with
/// years (or hours for time values) and proceeding to the finest precision specified in either input.
/// If either argument is null, the result is null.
/// Signature:
///
/// same _precision_ as(left Date, right Date) Boolean
/// same _precision_ as(left DateTime, right DateTime) Boolean
/// same _precision_ as(left Time, right Time) Boolean
/// Description:
///
/// The same-precision-as operator compares two Date, DateTime, or Time values
/// to the specified precision for equality. The comparison is performed by
/// considering each precision in order, beginning with years (or hours for
/// time values). If the values are the same, comparison proceeds to the next
/// precision; if the values are different, the comparison stops and the result
/// is false; if either input has no value for the precision, the comparison
/// stops and the result is null; if the specified precision has been reached,
/// the comparison stops and the result is true.
///
/// If no precision is specified, the comparison is performed beginning with
/// years (or hours for time values) and proceeding to the finest precision
/// specified in either input.
///
/// For Date values, precision must be one of: year, month, or day.
///
/// For DateTime values, precision must be one of: year, month, day, hour,
/// minute, second, or millisecond.
///
/// For Time values, precision must be one of: hour, minute, second, or millisecond.
///
/// Note specifically that due to variability in the way week numbers are
/// determined, comparisons involving weeks are not supported.
///
/// When this operator is called with both Date and DateTime inputs, the Date
/// values will be implicitly converted to DateTime as defined by the ToDateTime
/// operator.
///
/// When comparing DateTime values with different timezone offsets,
/// implementations should normalize to the timezone offset of the evaluation
/// request timestamp, but only when the comparison precision is hours, minutes,
/// seconds, or milliseconds.
///
/// If either or both arguments are null, the result is null.
///
/// The following examples illustrate the behavior of the same-precision-as
/// operator:
///
/// define "SameAsTrue": @2012-01-01 same day as @2012-01-01
/// define "SameAsFalse": @2012-01-01 same day as @2012-01-02
/// define "UncertainSameAsIsNull": @2012-01-01 same day as @2012-01
/// define "SameAsIsNull": @2012-01-01 same day as null
/// This operator is also defined for intervals, see the Same As (Intervals) operator for more information.
class SameAs extends BinaryExpression {
  final CqlDateTimePrecision? precision;

  SameAs({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory SameAs.fromJson(Map<String, dynamic> json) => SameAs(
        precision: json['precision'] != null
            ? CqlDateTimePrecisionExtension.fromJson(json['precision'])
            : null,
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
    final data = <String, dynamic>{};
    if (precision != null) {
      data['precision'] = precision!.toJson();
    }
    data['type'] = type;
    data['operand'] = operand.map((e) => e.toJson()).toList();
    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (localId != null) {
      data['localId'] = localId;
    }
    if (locator != null) {
      data['locator'] = locator;
    }
    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }
    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return data;
  }

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'SameAs';

  @override
  FhirBoolean? execute(Map<String, dynamic> context) {
    if (operand.length != 2) {
      throw ArgumentError('Binary expression must have 2 operands');
    }
    final left = operand[0].execute(context);
    final right = operand[1].execute(context);
    if (left == null || right == null) {
      return null;
    } else if (left is FhirDateTime && right is FhirDateTime) {
      return FhirBoolean(left.precision.hasSamePrecisionAs(right.precision));
    }
    return null;
  }

  @override
  List<Type>? get returnTypes => const [FhirBoolean];
}
