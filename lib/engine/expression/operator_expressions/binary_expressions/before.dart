import 'package:fhir_primitives/fhir_primitives.dart';

import '../../../../cql.dart';

/// Operator to determine if the first interval ends before the second interval
/// starts.
/// Returns true if the ending point of the first interval is less than the
/// starting point of the second interval.
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
/// Signature:
///
/// before _precision_ of(left Date, right Date) Boolean
/// before _precision_ of(left DateTime, right DateTime) Boolean
/// before _precision_ of(left Time, right Time) Boolean
/// Description:
///
/// The before-precision-of operator compares two Date, DateTime, or Time
/// values to the specified precision to determine whether the first argument
/// is the before the second argument. The comparison is performed by
/// considering each precision in order, beginning with years (or hours for
/// time values). If the values are the same, comparison proceeds to the next
/// precision; if the first value is less than the second, the result is true;
/// if the first value is greater than the second, the result is false; if
/// either input has no value for the precision, the comparison stops and the
/// result is null; if the specified precision has been reached, the comparison
/// stops and the result is false.
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
/// For Time values, precision must be one of: hour, minute, second, or
/// millisecond.
///
/// Note specifically that due to variability in the way week numbers are
/// determined, comparisons involving weeks are not supported.
///
/// When this operator is called with both Date and DateTime inputs, the Date
/// values will be implicitly converted to DateTime values as defined by the
/// ToDateTime operator.
///
/// When comparing DateTime values with different timezone offsets,
/// implementations should normalize to the timezone offset of the evaluation
/// request timestamp, but only when the comparison precision is hours, minutes,
/// seconds, or milliseconds.
///
/// If either or both arguments are null, the result is null.
///
/// The following examples illustrate the behavior of the before-precision-of
/// operator:
///
/// define "BeforeIsTrue": @2012-01-01 before month of @2012-02-01
/// define "BeforeIsFalse": @2012-01-01 before month of @2012-01-01
/// define "BeforeUncertainIsNull": @2012 before month of @2012-02-01
/// define "BeforeIsNull": @2012-01-01 before month of null
/// This operator is also defined for intervals, see the Before (Intervals)
/// operator for more information.
class Before extends BinaryExpression {
  final CqlDateTimePrecision? precision;

  Before({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Before.fromJson(Map<String, dynamic> json) => Before(
        precision: json['precision'] == null
            ? null
            : CqlDateTimePrecisionExtension.fromJson(json['precision']),
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
      if (precision != null) 'precision': precision!.toJson(),
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
  String get type => 'Before';

  @override
  String toString() {
    return 'Before(${operand.join(', ')})';
  }

  @override
  List<Type>? getReturnTypes(Library library) => const [FhirBoolean];

  @override
  FhirBoolean? execute(Map<String, dynamic> context) {
    if (operand.length != 2) {
      throw ArgumentError('Before expression must have 2 operands');
    }
    final left = operand[0].execute(context);
    final right = operand[1].execute(context);
    if (left == null || right == null) {
      return null;
    } else if (left is FhirDateTimeBase && right is FhirDateTimeBase) {
      if (precision == null) {
        final result = left.isBefore(right);
        return result == null ? null : FhirBoolean(result);
      } else {
        // Start from the highest precision and go down to the specified one.
        if (left.year < right.year) {
          return FhirBoolean(true);
        } else if (left.year > right.year) {
          return FhirBoolean(false);
        } // Year comparison is equal, move to next precision
        if (precision == CqlDateTimePrecision.year) {
          return FhirBoolean(
              false); // If only comparing years, they are equal at this point.
        }

        if (!left.precision.hasMonth || !right.precision.hasMonth) {
          return null;
        } else if (left.month < right.month) {
          return FhirBoolean(true);
        } else if (left.month > right.month) {
          return FhirBoolean(false);
        }
        if (precision == CqlDateTimePrecision.month) {
          return FhirBoolean(
              false); // If only comparing months, they are equal at this point.
        }

        if (!left.precision.hasDay || !right.precision.hasDay) {
          return null;
        } else if (left.day < right.day) {
          return FhirBoolean(true);
        } else if (left.day > right.day) {
          return FhirBoolean(false);
        }
        if (precision == CqlDateTimePrecision.day) {
          return FhirBoolean(
              false); // If only comparing days, they are equal at this point.
        }

        if (!left.precision.hasHours || !right.precision.hasHours) {
          return null;
        } else if (left.hour < right.hour) {
          return FhirBoolean(true);
        } else if (left.hour > right.hour) {
          return FhirBoolean(false);
        }

        if (precision == CqlDateTimePrecision.hour) {
          return FhirBoolean(
              false); // If only comparing hours, they are equal at this point.
        }

        if (!left.precision.hasMinutes || !right.precision.hasMinutes) {
          return null;
        } else if (left.minute < right.minute) {
          return FhirBoolean(true);
        } else if (left.minute > right.minute) {
          return FhirBoolean(false);
        }

        if (precision == CqlDateTimePrecision.minute) {
          return FhirBoolean(
              false); // If only comparing minutes, they are equal at this point.
        }

        if (!left.precision.hasSeconds || !right.precision.hasSeconds) {
          return null;
        } else if (left.second < right.second) {
          return FhirBoolean(true);
        } else if (left.second > right.second) {
          return FhirBoolean(false);
        }

        if (precision == CqlDateTimePrecision.second) {
          return FhirBoolean(
              false); // If only comparing seconds, they are equal at this point.
        }

        if (!left.precision.hasMilliseconds ||
            !right.precision.hasMilliseconds) {
          return null;
        } else if (left.millisecond < right.millisecond) {
          return FhirBoolean(true);
        } else if (left.millisecond > right.millisecond) {
          return FhirBoolean(false);
        }

        return FhirBoolean(
            false); // If only comparing milliseconds, they are equal at this point.
      }
    }
    return null;
  }
}
