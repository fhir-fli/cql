import 'package:cql/src/internal.dart';

/// Operator to check if the first operand properly contains the second operand.
/// Returns true if the given point is greater than the starting point of the interval and less than the ending point of the interval.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class ProperContains extends BinaryExpression {
  ProperContains({
    required super.operand,
    this.precision,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ProperContains.fromJson(Map<String, dynamic> json) => ProperContains(
        precision: json['precision'] != null
            ? CqlDateTimePrecisionExtension.fromJson(
                json['precision'] as String?)
            : null,
        operand: List<CqlExpression>.from(
          (json['operand'] as List<dynamic>).map(
            (dynamic x) => CqlExpression.fromJson(x as Map<String, dynamic>),
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
                json['resultTypeSpecifier'] as Map<String, dynamic>)
            : null,
      );
  final CqlDateTimePrecision? precision;

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'type': type,
      if (precision != null) 'precision': precision!.toJson(),
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
  String toString() => toJson().toString();

  @override
  String get type => 'ProperContains';

  @override
  Future<CqlBoolean?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('ProperContains expression must have 2 operands');
    }
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    return properContains(left, right, precision);
  }

  /// CQL-aware equality for list membership testing.
  ///
  /// Uses [Equal.equal] but adds proper precision handling for [CqlTime]
  /// and [CqlDateTimeBase] values. When two temporal values have different
  /// precisions (e.g. seconds vs milliseconds), the result is `null` per the
  /// CQL spec, even though [CqlTime._compare] may return `false`.
  static CqlBoolean? _cqlEqual(dynamic a, dynamic b) {
    if (a == null || b == null) return null;
    // Handle CqlTime precision differences
    if (a is CqlTime && b is CqlTime) {
      final aHasMs = a.millisecond != null;
      final bHasMs = b.millisecond != null;
      if (aHasMs != bHasMs) {
        // Different precisions: compare at the lower precision (seconds)
        // If they match at seconds, the result is null (indeterminate)
        // If they differ at seconds, the result is false (definitely not equal)
        final aSecStr = a.valueString?.split('.').first;
        final bSecStr = b.valueString?.split('.').first;
        if (aSecStr == bSecStr) return null;
        return CqlBoolean(false);
      }
    }
    // Handle CqlDateTimeBase precision differences
    // Equal.equal already delegates to CqlDateTimeBase.isEqual which
    // properly returns null for different precisions.
    return Equal.equal(a, b);
  }

  static CqlBoolean? properContains(
    dynamic left,
    dynamic right, [
    CqlDateTimePrecision? precision,
  ]) {
    if (left is CqlInterval) {
      if (right == null) return null;
      // Per CQL spec: properly contains means point is strictly between
      // start and end (greater than start AND less than end)
      final start = left.getStart();
      final end = left.getEnd();
      if (start == null || end == null) return null;
      // Use After/Before for date/time types, Greater/Less for numerics
      final CqlBoolean? afterStart;
      final CqlBoolean? beforeEnd;
      if (right is CqlDateTimeBase || right is CqlTime) {
        afterStart = After.after(right, start, precision);
        beforeEnd = Before.before(right, end, precision);
      } else {
        afterStart = Greater.greater(right, start);
        beforeEnd = Less.less(right, end);
      }
      return And.and(afterStart, beforeEnd);
    } else if (left == null) {
      return null;
    } else if (left is List) {
      // For lists, "properly contains" means:
      // 1. The element is in the list (using equality semantics, with null == null)
      // 2. The list has at least one other distinct element
      //
      // Use equality semantics (which can return null for precision mismatches)
      // with the exception that null elements are considered equal to null.
      var found = false;
      var hasNull = false;

      // First check if the element is in the list
      if (right == null) {
        // Searching for null: check if list contains any null element
        found = left.any((e) => e == null);
      } else {
        // Searching for a non-null value: use equality semantics
        for (final element in left) {
          if (element == null) {
            continue;
          }
          final eq = _cqlEqual(element, right);
          if (eq?.valueBoolean == true) {
            found = true;
            break;
          }
          if (eq == null) {
            hasNull = true;
          }
        }
      }

      if (!found && hasNull) {
        // Indeterminate: some comparison returned null (e.g. precision mismatch)
        return null;
      }
      if (!found) {
        return CqlBoolean(false);
      }

      // Element found; now check that the list has at least one other
      // distinct element (i.e., the list is not solely composed of the
      // searched element).
      var hasOther = false;
      for (final element in left) {
        if (right == null) {
          if (element != null) {
            hasOther = true;
            break;
          }
        } else {
          if (element == null) {
            hasOther = true;
            break;
          }
          final eq = _cqlEqual(element, right);
          if (eq?.valueBoolean == false) {
            hasOther = true;
            break;
          }
          // If eq is null (indeterminate), it might be a different element,
          // but we can't be sure — don't count it as "other".
        }
      }

      return CqlBoolean(hasOther);
    }
    return null;
  }
}
