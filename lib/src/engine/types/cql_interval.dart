import 'package:cql/src/internal.dart';
import 'package:meta/meta.dart';

/// The CQL `Interval` type: a range of ordered values of point type [T].
///
/// An interval is defined by a [low] and [high] boundary together with
/// closed/open flags ([lowClosed]/[highClosed]) that state whether each
/// boundary value is included. A `null` boundary denotes an unknown or
/// unbounded endpoint. Intervals support the full CQL interval algebra —
/// [contains], [intersect], [except], overlap and comparison operators — and
/// use [getStart]/[getEnd] to obtain the effective inclusive endpoints
/// (adjusting open boundaries via successor/predecessor and substituting type
/// min/max for unbounded ends). The [uncertain] flag marks intervals derived
/// from imprecise date/time values, per CQL's uncertainty semantics.
@immutable
class CqlInterval<T> implements CqlType, Comparable<CqlInterval<dynamic>> {
  /// Creates an interval spanning [low]..[high].
  ///
  /// [lowClosed] and [highClosed] default to `true` (a closed interval).
  /// Throws if the ending boundary is ordered before the starting boundary.
  CqlInterval({
    this.low,
    bool? lowClosed,
    this.high,
    bool? highClosed,
    this.state,
    this.uncertain = false,
  })  : lowClosed = lowClosed ?? true,
        highClosed = highClosed ?? true {
    if (low is CqlDateTimeBase && high is CqlDateTimeBase) {
      if ((low! as CqlDateTimeBase).isAfter(high! as CqlDateTimeBase) ?? true) {
        throw Exception(
          'Invalid Interval - the ending boundary must be greater than '
          'or equal to the starting boundary.',
        );
      }
    } else if (low != null && high != null) {
      final isStartGreater =
          Greater.greater(getStart(), getEnd())?.valueBoolean;
      if (isStartGreater == true) {
        throw Exception(
          'Invalid Interval - the ending boundary must be greater than '
          'or equal to the starting boundary.',
        );
      }
    }
  }
  final T? low;
  final bool lowClosed;
  final T? high;
  final bool highClosed;
  final dynamic state;

  /// Marks an interval derived from imprecise date/time values, per CQL's
  /// uncertainty semantics.
  final bool uncertain;

  /// The CQL point-type name of this interval's boundaries (e.g. `Integer`,
  /// `DateTime`), inferred from [T] or from the runtime boundary values.
  String get type => T != dynamic
      ? T.toString()
      : low != null
          ? low.runtimeType.toString()
          : high != null
              ? high.runtimeType.toString()
              : 'dynamic';

  dynamic getSize(dynamic start, dynamic end) {
    if (start == null || end == null) {
      return null;
    }

    if (start is CqlNumber) {
      return Subtract.subtract(end, start);
    }

    throw Exception(
      'Cannot perform width operator with argument of type '
      "'${start.runtimeType}'.",
    );
  }

  bool isUncertain() => uncertain;

  /// The effective inclusive starting point of the interval.
  ///
  /// For an open low boundary the successor of [low] is returned; for an
  /// unbounded (`null`) low the minimum value of the point type is used.
  Object? getStart() {
    return lowClosed
        ? low ?? MinValue.minValue(high.runtimeType.toString())
        : Successor.successor(low);
  }

  /// The effective inclusive ending point of the interval.
  ///
  /// For an open high boundary the predecessor of [high] is returned; for an
  /// unbounded (`null`) high the maximum value of the point type is used.
  Object? getEnd() => highClosed
      ? high ?? MaxValue.maxValue(low.runtimeType.toString())
      : Predecessor.predecessor(high);

  @override
  int compareTo(CqlInterval<dynamic> other) {
    if (_compareTo(getStart(), other.getStart()) == 0) {
      return _compareTo(getEnd(), other.getEnd());
    }
    return _compareTo(getStart(), other.getStart());
  }

  int _compareTo(dynamic left, dynamic right) {
    if (left == null && right == null) {
      return 0;
    } else if (left == null) {
      return -1;
    } else if (right == null) {
      return 1;
    }

    try {
      if (left is Comparable) {
        return left.compareTo(right);
      } else {
        throw Exception('Type ${left.runtimeType} is not comparable');
      }
      // A dynamic compareTo between mismatched boundary types surfaces as a
      // runtime TypeError; converting it into a domain Exception with a
      // helpful message is deliberate here.
      // ignore: avoid_catching_errors
    } on TypeError catch (_) {
      throw Exception(
        'Type ${left.runtimeType} is not compatible for comparison with '
        '${right.runtimeType}',
      );
    }
  }

  /// Whether [value] falls within this interval.
  ///
  /// Accepts either a point of the interval's type or another
  /// [CqlInterval] (testing containment of the whole sub-interval).
  bool contains(dynamic value) =>
      !(value == null) &&
      (value is CqlInterval
          ? (GreaterOrEqual.greaterOrEqual(value.getStart(), getStart())
                      ?.valueBoolean ??
                  false) &&
              (LessOrEqual.lessOrEqual(value.getEnd(), getEnd())
                      ?.valueBoolean ??
                  false)
          : (GreaterOrEqual.greaterOrEqual(value, getStart())?.valueBoolean ??
                  false) &&
              (LessOrEqual.lessOrEqual(value, getEnd())?.valueBoolean ??
                  false));

  @override
  bool equivalent(Object other) =>
      other is CqlInterval &&
      ((Equivalent.equivalent(getStart(), other.getStart()).valueBoolean ??
              false) &&
          (Equivalent.equivalent(getEnd(), other.getEnd()).valueBoolean ??
              false));

  @override
  bool? equal(Object other) {
    if (other is CqlInterval) {
      if (isUncertain()) {
        if (Intersect.intersect(this, other) != null) {
          return null;
        }
      }

      return And.and(
        Equal.equal(getStart(), other.getStart()),
        Equal.equal(getEnd(), other.getEnd()),
      )?.valueBoolean;
    }

    if (other is int) {
      // Assuming the constructor and methods to handle this scenario
      return equal(
        CqlInterval(
          low: other,
          lowClosed: true,
          high: other,
          highClosed: true,
          state: state,
        ),
      );
    }

    throw Exception(
      "Cannot perform equal operation on types: '$runtimeType' and "
      "'${other.runtimeType}'",
    );
  }

  /// Returns the interval of points common to both this interval and [right],
  /// or `null` when they do not overlap.
  CqlInterval<dynamic>? intersect(CqlInterval<dynamic> right) {
    // Get start and end points for both intervals
    final leftStart = getStart();
    final leftEnd = getEnd();
    final rightStart = right.getStart();
    final rightEnd = right.getEnd();

    // Handle null boundaries as extending to infinity
    // Both start AND end null means empty/invalid — return null
    if (leftStart == null && leftEnd == null) return null;
    if (rightStart == null && rightEnd == null) return null;

    // Check overlap: if we have all four endpoints, check properly;
    // if some are null (unbounded), check what we can
    if (leftStart != null &&
        leftEnd != null &&
        rightStart != null &&
        rightEnd != null) {
      final overlaps = Overlaps.overlaps(this, right)?.valueBoolean ?? false;
      if (!overlaps) return null;
    } else {
      // Partial null check: if left ends before right starts, no overlap
      if (leftEnd != null &&
          rightStart != null &&
          (Less.less(leftEnd, rightStart)?.valueBoolean ?? false)) {
        return null;
      }
      if (rightEnd != null &&
          leftStart != null &&
          (Less.less(rightEnd, leftStart)?.valueBoolean ?? false)) {
        return null;
      }
    }

    // Find the maximum start point (null start = unknown → result unknown)
    Object? maxStart;
    bool resultLowClosed;
    if (leftStart == null && rightStart == null) {
      maxStart = null;
      resultLowClosed = false;
    } else if (leftStart == null) {
      // Left start unknown: max(unknown, rightStart) = unknown
      maxStart = null;
      resultLowClosed = false;
    } else if (rightStart == null) {
      // Right start unknown: max(leftStart, unknown) = unknown
      maxStart = null;
      resultLowClosed = false;
    } else {
      maxStart = (Greater.greater(leftStart, rightStart)?.valueBoolean ?? false)
          ? leftStart
          : rightStart;
      resultLowClosed = true;
    }

    // Find the minimum end point (null end = unknown → result unknown)
    Object? minEnd;
    bool resultHighClosed;
    if (leftEnd == null && rightEnd == null) {
      minEnd = null;
      resultHighClosed = false;
    } else if (leftEnd == null) {
      // Left end unknown: min(unknown, rightEnd) = unknown
      minEnd = null;
      resultHighClosed = false;
    } else if (rightEnd == null) {
      // Right end unknown: min(leftEnd, unknown) = unknown
      minEnd = null;
      resultHighClosed = false;
    } else {
      minEnd = (Less.less(leftEnd, rightEnd)?.valueBoolean ?? false)
          ? leftEnd
          : rightEnd;
      resultHighClosed = true;
    }

    // Ensure the intersection is valid (start is before end)
    if (maxStart != null &&
        minEnd != null &&
        !(GreaterOrEqual.greaterOrEqual(minEnd, maxStart)?.valueBoolean ??
            false)) {
      return null;
    }

    // Return the new interval representing the intersection
    return CqlInterval(
      low: maxStart,
      lowClosed: resultLowClosed,
      high: minEnd,
      highClosed: resultHighClosed,
    );
  }

  /// Returns the portion of this interval that lies outside [right].
  ///
  /// Yields `null` when the result would be empty or would not form a single
  /// contiguous interval (e.g. when [right] is strictly interior to this one).
  CqlInterval<dynamic>? except(CqlInterval<dynamic> right) {
    // Get start and end points for both intervals
    final leftStart = getStart();
    final leftEnd = getEnd();
    final rightStart = right.getStart();
    final rightEnd = right.getEnd();

    // Ensure no start or end point is null
    if (leftStart == null ||
        leftEnd == null ||
        rightStart == null ||
        rightEnd == null) {
      return null;
    }

    // Determine if intervals overlap
    final overlaps = Overlaps.overlaps(this, right)?.valueBoolean ?? false;
    if (!overlaps) {
      return this;
    }
    final doesContain = contains(right);
    if (doesContain) {
      // If right shares left's end, return the portion before right
      final endsEqual = Equal.equal(rightEnd, leftEnd)?.valueBoolean ?? false;
      if (endsEqual) {
        final newEnd = Predecessor.predecessor(rightStart);
        if (GreaterOrEqual.greaterOrEqual(newEnd, leftStart)?.valueBoolean ??
            false) {
          return CqlInterval(
            low: leftStart,
            lowClosed: true,
            high: newEnd,
            highClosed: true,
          );
        }
        return null;
      }
      // If right shares left's start, return the portion after right
      final startsEqual =
          Equal.equal(rightStart, leftStart)?.valueBoolean ?? false;
      if (startsEqual) {
        final newStart = Successor.successor(rightEnd);
        if (LessOrEqual.lessOrEqual(newStart, leftEnd)?.valueBoolean ?? false) {
          return CqlInterval(
            low: newStart,
            lowClosed: true,
            high: leftEnd,
            highClosed: true,
          );
        }
        return null;
      }
      // Right is strictly interior — result would be disjoint
      return null;
    }

    dynamic start;
    dynamic end;
    if (Less.less(leftStart, rightStart)?.valueBoolean ?? false) {
      start = leftStart;
      end = Predecessor.predecessor(rightStart);
    } else if (Greater.greater(leftEnd, rightEnd)?.valueBoolean ?? false) {
      start = Successor.successor(rightEnd);
      end = leftEnd;
    }

    // Ensure the result is valid (start is before or equal to end)
    if (!(GreaterOrEqual.greaterOrEqual(end, start)?.valueBoolean ?? false)) {
      return null;
    }

    return CqlInterval(
      low: start,
      lowClosed: true,
      high: end,
      highClosed: true,
    );
  }

  @override
  bool operator ==(Object other) {
    if (other is CqlInterval) {
      return equivalent(other);
    }
    return false;
  }

  @override
  int get hashCode {
    var result = 17;
    result = 31 * result + (lowClosed ? 1 : 0);
    result = 47 * result + (highClosed ? 1 : 0);
    result = 13 * result + (low != null ? low.hashCode : 0);
    result = 89 * result + (high != null ? high.hashCode : 0);
    return result;
  }

  @override
  String toString() {
    return 'Interval${lowClosed ? "[" : "("}${low ?? "null"}, '
        '${high ?? "null"}${highClosed ? "]" : ")"}';
  }
}
