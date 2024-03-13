import 'package:collection/collection.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:ucum/ucum.dart';

import '../../../../cql.dart';

/// Operator to check if the arguments are equal.
/// Returns true if the arguments are equal, false if they are known unequal, and null otherwise.
/// Equality semantics are defined to be value-based.
/// If either argument is null, the result is null.
///
/// Signature:
/// =<T>(left T, right T) Boolean
/// Description:
/// The equal (=) operator returns true if the arguments are equal; false if
/// the arguments are known unequal, and null otherwise. Equality semantics are
/// defined to be value-based.
///
/// For simple types, this means that equality returns true if and only if the
/// result of each argument evaluates to the same value.
///
/// For string values, equality is strictly lexical based on the Unicode
/// values for the individual characters in the strings.
///
/// For decimal values, trailing zeroes are ignored.
///
/// For quantities, this means that the dimensions of each quantity must be
/// the same, but not necessarily the unit. For example, units of 'cm' and 'm'
/// are comparable, but units of 'cm2' and 'cm' are not. Attempting to operate
/// on quantities with invalid units will result in a null. When a quantity has
/// no units specified, it is treated as a quantity with the default unit ('1').
///
/// For time-valued quantities, UCUM definite-time duration quantities above
/// days (and weeks) are not comparable to calendar duration quantities above
/// days (and weeks). Definite-time duration unit conversions shall be
/// performed as specified in ISO-8601, while calendar-time duration unit
/// conversions shall be performed according to calendar duration semantics:
///
/// 1 year = 12 months
/// 1 week = 7 days
/// 1 day = 24 hours
/// 1 hour = 60 minutes
/// 1 minute = 60 seconds
/// 1 second = 1000 milliseconds
///
/// In particular, unit conversion between variable length calendar durations
/// (i.e. years and months) and definite-time durations (i.e. days or below)
/// results in null.
///
/// For ratios, this means that the numerator and denominator must be the same,
/// using quantity equality semantics.
///
/// For tuple types, this means that equality returns true if and only if the
/// tuples are of the same type, and the values for all elements that have
/// values, by name, are equal.
///
/// For list types, this means that equality returns true if and only if the
/// lists contain elements of the same type, have the same number of elements,
/// and for each element in the lists, in order, the elements are equal using
/// equality semantics, with the exception that null elements are considered
/// equal.
///
/// For interval types, equality returns true if and only if the intervals are
/// over the same point type, and they have the same value for the starting and
/// ending points of the interval as determined by the Start and End operators.
///
/// For Date, DateTime, and Time values, the comparison is performed by
/// considering each precision in order, beginning with years (or hours for
/// time values). If the values are the same, comparison proceeds to the next
/// precision; if the values are different, the comparison stops and the result
/// is false. If one input has a value for the precision and the other does not,
/// the comparison stops and the result is null; if neither input has a value
/// for the precision, or the last precision has been reached, the comparison
/// stops and the result is true. For the purposes of comparison, seconds and
/// milliseconds are combined as a single precision using a decimal, with
/// decimal equality semantics.
///
/// If either argument is null, the result is null.
///
/// The following examples illustrate the behavior of the equal operator:
///
/// define "IntegerEqualIsTrue": 4 = (2 + 2)
/// define "LongEqualIsTrue": 4L = (2L + 2L)
/// define "DecimalEqualIsFalse": 3.5 = (3.5 - 0.1)
/// define "StringEqualIsFalse": 'John Doe' = 'john doe'
/// define "QuantityEqualIsNull": 3.5 'cm2' = 3.5 'cm'
/// define "RatioEqualIsTrue": 1:8 = 1:8
/// define "RatioEqualIsFalse": 1:8 = 2:16
/// define "ListEqualIsTrue": { null, 1, 2, 3 } = { null, 1, 2, 3 }
/// define "DateTimeEqualIsNull": @2012-01-01 = @2012-01-01T12
/// define "NullEqualIsNull": null = null
class Equal extends BinaryExpression {
  Equal({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Equal.fromJson(Map<String, dynamic> json) => Equal(
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
  String get type => 'Equal';

  @override
  FhirBoolean? execute(Map<String, dynamic> context) {
    if (operand.length != 2) {
      throw ArgumentError('Binary expression must have 2 operands');
    } else {
      final left = operand[0].execute(context);
      final right = operand[1].execute(context);
      final result = equal(left, right);
      return result == null ? null : FhirBoolean(result);
    }
  }

  static bool? equal(dynamic left, dynamic right) {
    if (left == null || right == null) {
      return null;
    }
    switch (left) {
      case String _:
        {
          if (right is String) {
            return left == right;
          }
          return false;
        }
      case FhirDateTime _:
        {
          if (right is FhirDateTime) {
            return left.isEqual(right);
          }
          return false;
        }
      case FhirDate _:
        {
          if (right is FhirDate) {
            return left.isEqual(right);
          }
          return false;
        }
      case FhirTime _:
        {
          if (right is FhirTime) {
            return left.isEqual(right);
          }
          return false;
        }
      case CodeType _:
        {
          return left.equal(right);
        }
      case ConceptType _:
        {
          return left.equal(right);
        }
      case int _:
        {
          if (right is int) {
            return left == right;
          }
          return false;
        }
      case BigInt _:
        {
          if (right is BigInt) {
            return left == right;
          }
          return false;
        }
      case double _:
        {
          if (right is double) {
            return left == right;
          }
          return false;
        }
      case FhirInteger _:
        {
          if (right is FhirInteger) {
            return left == right;
          }
          return false;
        }
      case FhirInteger64 _:
        {
          if (right is FhirInteger64) {
            return left == right;
          }
          return false;
        }
      case FhirDecimal _:
        {
          if (right is FhirDecimal) {
            return left == right;
          }
          return false;
        }
      case ValidatedQuantity _:
        {
          if (right is ValidatedQuantity) {
            return left == right;
          }
          return false;
        }
      case ValidatedRatio _:
        {
          if (right is ValidatedRatio) {
            return left == right;
          }
          return false;
        }

      case List _:
        {
          if (right is List && left.length == right.length) {
            for (var i = 0; i < left.length; i++) {
              final result = equal(left[i], right[i]);
              if (result == null || !result) {
                return result;
              }
            }
            return true;
          }
          return false;
        }
      case TupleType _:
        {
          if (right is TupleType) {
            if (left.elements == null ||
                right.elements == null ||
                left.elements?.length != right.elements?.length) {
              return false;
            }
            final leftMap = Map.from(left.elements!);
            final rightMap = Map.from(right.elements!);
            if (const DeepCollectionEquality().equals(leftMap, rightMap)) {
              return true;
            }
            for (final element in leftMap.keys) {
              if (!rightMap.containsKey(element)) {
                return false;
              } else {
                final result = equal(leftMap[element], rightMap[element]);
                if (result == null || !result) {
                  return result;
                } else {
                  rightMap.remove(element);
                }
              }
            }
            return rightMap.isEmpty;
          }
          return false;
        }
      case Map _:
        {
          if (right is Map) {
            if (left.length != right.length) {
              return false;
            }
            final leftMap = Map.from(left);
            final rightMap = Map.from(right);
            if (const DeepCollectionEquality().equals(leftMap, rightMap)) {
              return true;
            }
            for (final element in leftMap.keys) {
              if (!rightMap.containsKey(element)) {
                return false;
              } else {
                final result = equal(leftMap[element], rightMap[element]);
                if (result == null || !result) {
                  return result;
                } else {
                  rightMap.remove(element);
                }
              }
            }
            return rightMap.isEmpty;
          }
          return false;
        }
      // TODO(Dokotela): Implement IntervalType
      // case IntervalType _:
      //   {
      //     if (right is IntervalType) {
      //       return left.equivalent(right);
      //     }
      //     return false;
      //   }
      default:
        return left == right;
    }
  }
}
