// ignore_for_file: annotate_overrides, overridden_fields, noop_primitive_operations, unnecessary_this

// Package imports:
import 'package:fhir/primitive_types/primitive_types.dart';

// Project imports:
import '../../fhir_path.dart';

class EqualsParser extends OperatorParser {
  const EqualsParser(super.before, super.after);
  EqualsParser copyWith(ParserList before, ParserList after) =>
      EqualsParser(before, after);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List execute(List results, Map<String, dynamic> passed) {
    final lhs = before.execute(results.toList(), passed);
    final rhs = after.execute(results.toList(), passed);

    if (lhs.isEmpty || rhs.isEmpty) {
      return [];
    } else if (lhs.length != rhs.length) {
      return [false];
    } else {
      /// for each entry in lhs and rhs (we checked above to ensure they
      /// were the same length)
      for (var i = 0; i < lhs.length; i++) {
        /// we check to see if any of the values are DateTimes
        if (lhs[i] is FhirDateTime ||
            lhs[i] is FhirDate ||
            rhs[i] is FhirDateTime ||
            rhs[i] is FhirDate) {
          /// As long as one is, we convert them both to strings then back
          /// to DateTimes
          final lhsDateTime = FhirDateTime(lhs[i].toString());
          final rhsDateTime = FhirDateTime(rhs[i].toString());

          /// As long as they are both valid we try and compare them
          if (lhsDateTime.isValid && rhsDateTime.isValid) {
            try {
              if (lhsDateTime != rhsDateTime) {
                var lhsDatePrecision =
                    '-'.allMatches(lhsDateTime.toString()).length;
                lhsDatePrecision = lhsDatePrecision > 2 ? 2 : lhsDatePrecision;
                var rhsDatePrecision =
                    '-'.allMatches(rhsDateTime.toString()).length;
                rhsDatePrecision = rhsDatePrecision > 2 ? 2 : rhsDatePrecision;
                var lhsTimePrecision =
                    ':'.allMatches(lhsDateTime.toString()).length;
                lhsTimePrecision = lhsTimePrecision > 2 ? 2 : lhsTimePrecision;
                var rhsTimePrecision =
                    ':'.allMatches(rhsDateTime.toString()).length;
                rhsTimePrecision = rhsTimePrecision > 2 ? 2 : rhsTimePrecision;
                if (lhsDatePrecision != rhsDatePrecision ||
                    lhsTimePrecision != rhsTimePrecision) {
                  return <dynamic>[];
                } else {
                  return <dynamic>[false];
                }
              }
            } catch (e) {
              return <dynamic>[];
            }
          } else {
            /// If not it means only one is, so this is false
            return <dynamic>[false];
          }
        }

        /// If they aren't dateTimes we can just compare them as usual
        else {
          if (lhs[i] is FhirPathQuantity || rhs[i] is FhirPathQuantity) {
            if (lhs[i] is FhirPathQuantity) {
              return <dynamic>[lhs[i] == rhs[i]];
            } else {
              return <dynamic>[rhs[i] == lhs[i]];
            }
          }
          if (lhs[i] != rhs[i] || rhs[i] != lhs[i]) {
            return <dynamic>[false];
          }
        }
      }
      return [true];
    }
  }

  @override
  String toString() {
    return 'EqualsParser: $before EQUALS $after';
  }

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '${"  " * indent}=${super.prettyPrint(indent)}';
}

// TODO(Dokotela): write test
class EquivalentParser extends OperatorParser {
  const EquivalentParser(super.before, super.after);
  EquivalentParser copyWith(ParserList before, ParserList after) =>
      EquivalentParser(before, after);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List execute(List results, Map<String, dynamic> passed) {
    final executedBefore = before.execute(results.toList(), passed);
    final executedAfter = after.execute(results.toList(), passed);
    if (executedBefore.isEmpty) {
      if (executedAfter.isEmpty) {
        return [true];
      } else {
        return [false];
      }
    } else if (executedBefore.length != executedAfter.length) {
      return [false];
    } else {
      executedBefore.removeWhere((lhsElement) =>
          executedAfter.indexWhere((rhsElement) {
            if (lhsElement is FhirDateTime ||
                lhsElement is FhirDate ||
                rhsElement is FhirDateTime ||
                rhsElement is FhirDate) {
              /// As long as one is, we convert them both to strings then back
              /// to DateTimes
              final lhsDateTime = FhirDateTime(lhsElement.toString());
              final rhsDateTime = FhirDateTime(rhsElement.toString());

              /// As long as they are both valid we try and compare them
              if (lhsDateTime.isValid && rhsDateTime.isValid) {
                return lhsDateTime == rhsDateTime;
              } else {
                return false;
              }
            } else if (lhsElement is FhirPathQuantity ||
                rhsElement is FhirPathQuantity) {
              if (lhsElement is FhirPathQuantity) {
                return lhsElement.equivalent(rhsElement as Object);
              } else {
                return (rhsElement as FhirPathQuantity)
                    .equivalent(lhsElement as Object);
              }
            } else if (lhsElement is num || rhsElement is num) {
              final sigDigsLhs = num.tryParse(lhsElement.toString())
                  ?.toStringAsExponential()
                  .split('e');
              final sigDigsRhs = num.tryParse(rhsElement.toString())
                  ?.toStringAsExponential()
                  .split('e');
              if (sigDigsLhs == null || sigDigsRhs == null) {
                return false;
              } else {
                if (sigDigsLhs.first.length < sigDigsRhs.first.length) {
                  return num.parse('${sigDigsLhs.first}e${sigDigsLhs.last}') ==
                      num.parse(
                          '${sigDigsRhs.first.toString().substring(0, sigDigsLhs.first.length)}'
                          'e${sigDigsRhs.last}');
                } else {
                  return num.parse(
                          '${sigDigsLhs.first.toString().substring(0, sigDigsRhs.first.length)}'
                          'e${sigDigsLhs.last}') ==
                      num.parse('${sigDigsRhs.first}e${sigDigsRhs.last}');
                }
              }
            } else if (lhsElement is String || rhsElement is String) {
              return lhsElement.toString().toLowerCase() ==
                  rhsElement.toString().toLowerCase();
            } else {
              return lhsElement == rhsElement || rhsElement == lhsElement;
            }
          }) !=
          -1);
      return [executedBefore.isEmpty];
    }
  }

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '${"  " * indent}~${super.prettyPrint(indent)}';
}

/// https://hl7.org/fhirpath/#not-equals
///
/// A != B is short-hand for (A = B).not()
class NotEqualsParser extends OperatorParser {
  const NotEqualsParser(super.before, super.after);
  NotEqualsParser copyWith(ParserList before, ParserList after) =>
      NotEqualsParser(before, after);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List execute(List results, Map<String, dynamic> passed) {
    final equalsParser = EqualsParser(this.before, this.after);
    final equality = equalsParser.execute(results, passed);
    return FpNotParser().execute(equality, passed);
  }

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '${"  " * indent}!=${super.prettyPrint(indent)}';
}

class NotEquivalentParser extends OperatorParser {
  const NotEquivalentParser(super.before, super.after);
  NotEquivalentParser copyWith(ParserList before, ParserList after) =>
      NotEquivalentParser(before, after);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List execute(List results, Map<String, dynamic> passed) {
    final equivalentParser = EquivalentParser(this.before, this.after);
    final equality = equivalentParser.execute(results, passed);
    return FpNotParser().execute(equality, passed);
  }

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '${"  " * indent}!~${super.prettyPrint(indent)}';
}
