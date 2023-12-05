import 'package:fhir/r4.dart';

import '../cql.dart';

class Interval {
  final dynamic low;
  final dynamic high;
  final bool lowClosed;
  final bool highClosed;
  final dynamic defaultPointType;

  Interval(
      {required this.low,
      required this.high,
      this.lowClosed = true,
      this.highClosed = true,
      this.defaultPointType});

  bool get isInterval => true;

  dynamic get pointType {
    var pointType = null;
    final point = low != null ? low : high;
    if (point != null) {
      if (point is num) {
        pointType = point is int
            ? '{urn:hl7-org:elm-types:r1}Integer'
            : '{urn:hl7-org:elm-types:r1}Decimal';
      } else if (point is DateTime) {
        pointType = '{urn:hl7-org:elm-types:r1}DateTime';
      } else if (point is Quantity) {
        pointType = '{urn:hl7-org:elm-types:r1}Quantity';
      }
    }
    if (pointType == null && defaultPointType != null) {
      pointType = defaultPointType;
    }
    return pointType;
  }

  Interval copy() {
    var newLow = low;
    var newHigh = high;
    if (low != null && low is Function) {
      newLow = (low as Function).call();
    }
    if (high != null && high is Function) {
      newHigh = (high as Function).call();
    }

    return Interval(
        low: newLow,
        high: newHigh,
        lowClosed: lowClosed,
        highClosed: highClosed);
  }

  bool contains(dynamic item, [dynamic precision]) {
    if (lowClosed && low != null && low == item) {
      return true;
    }
    if (highClosed && high != null && high == item) {
      return true;
    }
    if (item != null && item is Interval) {
      throw ArgumentError('Argument to contains must be a point');
    }
    bool Function(dynamic, dynamic)? lowFn;
    if (lowClosed && low == null) {
      lowFn = (_, __) => true;
    } else if (lowClosed) {
      lowFn = (a, b) => a <= b;
    } else {
      lowFn = (a, b) => a < b;
    }
    bool Function(dynamic, dynamic)? highFn;
    if (highClosed && high == null) {
      highFn = (_, __) => true;
    } else if (highClosed) {
      highFn = (a, b) => a >= b;
    } else {
      highFn = (a, b) => a > b;
    }
    return lowFn(low, item) && highFn(high, item);
  }

  bool? properlyIncludes(Interval other, [dynamic precision]) {
    if (other.isInterval) {
      return ThreeValuedLogic.and([
        this.includes(other, precision),
        ThreeValuedLogic.not(other.includes(this, precision)),
      ]);
    }
    throw ArgumentError('Argument to properlyIncludes must be an interval');
  }

  bool? includes(Interval other, [dynamic precision]) {
    final a = this.toClosed();
    final b = other.toClosed();
    return ThreeValuedLogic.and([
      compLessThanOrEquals(a.low, b.low, precision) ?? false,
      compGreaterThanOrEquals(a.high, b.high, precision) ?? false,
    ]);
  }

  bool? includedIn(Interval other, [dynamic precision]) {
    return other.includes(this);
  }

  bool? overlaps(dynamic item, [dynamic precision]) {
    final closed = this.toClosed();
    dynamic low;
    dynamic high;
    if (item is Interval) {
      final closed = item.toClosed();
      low = closed.low;
      high = closed.high;
    } else {
      low = item;
      high = item;
    }
    return ThreeValuedLogic.and([
      compLessThanOrEquals(closed.low, high, precision) ?? false,
      compGreaterThanOrEquals(closed.high, low, precision) ?? false,
    ]);
  }

  bool? overlapsAfter(dynamic item, [dynamic precision]) {
    final closed = this.toClosed();
    dynamic high;
    if (item is Interval) {
      final closed = item.toClosed();
      high = closed.high;
    } else {
      high = item;
    }
    return ThreeValuedLogic.and([
      compLessThanOrEquals(closed.low, high, precision) ?? false,
      compGreaterThan(closed.high, high, precision) ?? false,
    ]);
  }

  bool? overlapsBefore(dynamic item, [dynamic precision]) {
    final closed = this.toClosed();
    dynamic low;
    if (item is Interval) {
      final closed = item.toClosed();
      low = closed.low;
    } else {
      low = item;
    }
    return ThreeValuedLogic.and([
      compLessThan(closed.low, low, precision) ?? false,
      compGreaterThanOrEquals(closed.high, low, precision) ?? false,
    ]);
  }

  Interval? union(Interval other) {
    if (!other.isInterval) {
      throw ArgumentError('Argument to union must be an interval');
    }
    if ((overlaps(other) ?? false) || meets(other)) {
      final a = this.toClosed();
      final b = other.toClosed();
      dynamic l, h;
      bool lc = false, hc = false;
      if (compLessThanOrEquals(a.low, b.low) ?? false) {
        l = this.low;
        lc = this.lowClosed;
      } else if (compGreaterThanOrEquals(a.low, b.low) ?? false) {
        l = other.low;
        lc = other.lowClosed;
      } else if (areNumeric(a.low, b.low)) {
        l = lowestNumericUncertainty(a.low, b.low);
        lc = true;
        // TODO: Do we need to support quantities here?
      } else if (areDateTimes(a.low, b.low) &&
          (a.low as AbstractDate).isMorePrecise(b.low)) {
        l = other.low;
        lc = other.lowClosed;
      } else {
        l = this.low;
        lc = this.lowClosed;
      }
      if (compGreaterThanOrEquals(a.high, b.high) ?? false) {
        h = this.high;
        hc = this.highClosed;
      } else if (compLessThanOrEquals(a.high, b.high) ?? false) {
        h = other.high;
        hc = other.highClosed;
      } else if (areNumeric(a.high, b.high)) {
        h = highestNumericUncertainty(a.high, b.high);
        hc = true;
        // TODO: Do we need to support quantities here?
      } else if (areDateTimes(a.high, b.high) &&
          (a.high as AbstractDate).isMorePrecise(b.high)) {
        h = other.high;
        hc = other.highClosed;
      } else {
        h = this.high;
        hc = this.highClosed;
      }
      return Interval(low: l, high: h, lowClosed: lc, highClosed: hc);
    } else {
      return null;
    }
  }

  Interval? intersect(Interval other) {
    if (!other.isInterval) {
      throw ArgumentError('Argument to intersect must be an interval');
    }
    // Note that interval union is only defined if the arguments overlap.
    if (this.overlaps(other) ?? false) {
      final a = this.toClosed();
      final b = other.toClosed();
      dynamic l, h;
      bool lc = false, hc = false;
      if (compGreaterThanOrEquals(a.low, b.low) ?? false) {
        l = this.low;
        lc = this.lowClosed;
      } else if (compLessThanOrEquals(a.low, b.low) ?? false) {
        l = other.low;
        lc = other.lowClosed;
      } else if (areNumeric(a.low, b.low)) {
        l = highestNumericUncertainty(a.low, b.low);
        lc = true;
        // TODO: Do we need to support quantities here?
      } else if (areDateTimes(a.low, b.low) &&
          (b.low as AbstractDate).isMorePrecise(a.low)) {
        l = other.low;
        lc = other.lowClosed;
      } else {
        l = this.low;
        lc = this.lowClosed;
      }
      if (compLessThanOrEquals(a.high, b.high) ?? false) {
        h = this.high;
        hc = this.highClosed;
      } else if (compGreaterThanOrEquals(a.high, b.high) ?? false) {
        h = other.high;
        hc = other.highClosed;
      } else if (areNumeric(a.high, b.high)) {
        h = lowestNumericUncertainty(a.high, b.high);
        hc = true;
        // TODO: Do we need to support quantities here?
      } else if (areDateTimes(a.high, b.high) &&
          (b.high as AbstractDate).isMorePrecise(a.high)) {
        h = other.high;
        hc = other.highClosed;
      } else {
        h = this.high;
        hc = this.highClosed;
      }
      return Interval(low: l, high: h, lowClosed: lc, highClosed: hc);
    } else {
      return null;
    }
  }

  Interval? except(Interval other) {
    if (!other.isInterval) {
      throw ArgumentError('Argument to except must be an interval');
    }

    final ol = this.overlaps(other);
    if (ol ?? false) {
      final olb = this.overlapsBefore(other);
      final ola = this.overlapsAfter(other);
      if ((olb ?? false) && !(ola ?? true)) {
        return Interval(
            low: this.low,
            high: other.low,
            lowClosed: this.lowClosed,
            highClosed: !other.lowClosed);
      } else if ((ola ?? false) && !(olb ?? true)) {
        return Interval(
            low: other.high,
            high: this.high,
            lowClosed: !other.highClosed,
            highClosed: this.highClosed);
      } else {
        return null;
      }
    } else if (!(ol ?? true)) {
      return this;
    } else {
      // ol is null
      return null;
    }
  }

  bool? sameAs(Interval other, [dynamic precision]) {
    if ((this.low != null &&
            other.low != null &&
            this.high == null &&
            other.high != null &&
            !this.highClosed) ||
        (this.low != null &&
            other.low != null &&
            this.high != null &&
            other.high == null &&
            !other.highClosed) ||
        (this.low != null &&
            other.low != null &&
            this.high == null &&
            other.high == null &&
            !other.highClosed &&
            !this.highClosed)) {
      if (this.low is num) {
        if (!(this.start() == other.start())) {
          return false;
        }
      } else {
        if (!(this.start().sameAs(other.start(), precision) ?? false)) {
          return false;
        }
      }
    } else if ((this.low != null &&
            other.low == null &&
            this.high != null &&
            other.high != null) ||
        (this.low == null &&
            other.low != null &&
            this.high != null &&
            other.high != null) ||
        (this.low == null &&
            other.low == null &&
            this.high != null &&
            other.high != null)) {
      if (this.high is num) {
        if (!(this.end() == other.end())) {
          return false;
        }
      } else {
        if (!(this.end().sameAs(other.end(), precision) ?? false)) {
          return false;
        }
      }
    }

    if ((this.low == null && !this.lowClosed) ||
        (this.high == null && !this.highClosed) ||
        (other.low == null && !other.lowClosed) ||
        (other.high == null && !other.highClosed)) {
      return null;
    }

    if (this.lowClosed &&
        this.low == null &&
        this.highClosed &&
        this.high == null) {
      return other.lowClosed &&
          other.low == null &&
          other.highClosed &&
          other.high == null;
    }

    if (other.lowClosed &&
        other.low == null &&
        other.highClosed &&
        other.high == null) {
      return false;
    }

    if (this.low is num) {
      return this.start() == other.start() && this.end() == other.end();
    } else {
      return this.start().sameAs(other.start(), precision) &&
          this.end().sameAs(other.end(), precision);
    }
  }

  bool? sameOrBefore(Interval other, [dynamic precision]) {
    if (this.end() == null || other.start() == null) {
      return null;
    } else {
      return compLessThanOrEquals(this.end(), other.start(), precision);
    }
  }

  bool? sameOrAfter(Interval other, [dynamic precision]) {
    if (this.start() == null || other.end() == null) {
      return null;
    } else {
      return compGreaterThanOrEquals(this.start(), other.end(), precision);
    }
  }

  bool equals(Interval other) {
    if (other.isInterval) {
      final a = this.toClosed();
      final b = other.toClosed();
      return ThreeValuedLogic.and(
              [compEquals(a.low, b.low), compEquals(a.high, b.high)]) ??
          false;
    } else {
      return false;
    }
  }

  bool after(Interval other, [dynamic precision]) {
    final closed = this.toClosed();
    return compGreaterThan(closed.low, other.toClosed().high, precision) ??
        false;
  }

  bool before(Interval other, [dynamic precision]) {
    final closed = this.toClosed();
    return compLessThan(closed.high, other.toClosed().low, precision) ?? false;
  }

  bool meets(Interval other, [dynamic precision]) {
    return ThreeValuedLogic.or(
          [meetsBefore(other, precision), meetsAfter(other, precision)],
        ) ??
        false;
  }

  bool meetsAfter(Interval other, [dynamic precision]) {
    try {
      if (precision != null && this.low != null && this.low.isDateTime) {
        return this.toClosed().low.sameAs(
                  other.toClosed().high != null
                      ? other.toClosed().high.add(1, precision)
                      : null,
                  precision,
                ) ??
            false;
      } else {
        return compEquals(
                this.toClosed().low, successor(other.toClosed().high)) ??
            false;
      }
    } catch (error) {
      return false;
    }
  }

  bool meetsBefore(Interval other, [dynamic precision]) {
    try {
      if (precision != null && this.high != null && this.high.isDateTime) {
        return this.toClosed().high.sameAs(
                  other.toClosed().low != null
                      ? other.toClosed().low.add(-1, precision)
                      : null,
                  precision,
                ) ??
            false;
      } else {
        return compEquals(
                this.toClosed().high, predecessor(other.toClosed().low)) ??
            false;
      }
    } catch (error) {
      return false;
    }
  }

  dynamic start() {
    if (this.low == null) {
      if (this.lowClosed) {
        return minValueForInstance(this.high);
      } else {
        return this.low;
      }
    }
    return this.toClosed().low;
  }

  dynamic end() {
    if (this.high == null) {
      if (this.highClosed) {
        return maxValueForInstance(this.low);
      } else {
        return this.high;
      }
    }
    return this.toClosed().high;
  }

  bool starts(Interval other, [dynamic precision]) {
    bool startEqual;
    if (precision != null && this.low != null && this.low.isDateTime) {
      startEqual = this.low.sameAs(other.low, precision) ?? false;
    } else {
      startEqual = compEquals(this.low, other.low) ?? false;
    }
    final endLessThanOrEqual =
        compLessThanOrEquals(this.high, other.high, precision) ?? false;
    return startEqual && endLessThanOrEqual;
  }

  bool ends(Interval other, [dynamic precision]) {
    bool endEqual;
    final startGreaterThanOrEqual =
        compGreaterThanOrEquals(this.low, other.low, precision) ?? false;
    if (precision != null &&
        (this.low != null ? this.low.isDateTime : null) != null) {
      endEqual = this.high.sameAs(other.high, precision) ?? false;
    } else {
      endEqual = compEquals(this.high, other.high) ?? false;
    }
    return startGreaterThanOrEqual && endEqual;
  }

  dynamic width() {
    if ((this.low != null && (this.low.isDateTime || this.low.isDate)) ||
        (this.high != null && (this.high.isDateTime || this.high.isDate))) {
      throw ArgumentError(
          'Width of Date, DateTime, and Time intervals is not supported');
    }

    final closed = this.toClosed();
    if ((closed.low != null && closed.low.isUncertainty) ||
        (closed.high != null && closed.high.isUncertainty)) {
      return null;
    } else if (closed.low.isQuantity) {
      if (closed.low.unit != closed.high.unit) {
        throw ArgumentError(
            'Cannot calculate width of Quantity Interval with different units');
      }
      final lowValue = closed.low.value;
      final highValue = closed.high.value;
      var diff = (highValue - lowValue).abs();
      diff = (diff * 1e8).round() / 1e8;
      return CqlQuantities.simple(diff, closed.low.unit);
    } else {
      final diff = (closed.high - closed.low).abs();
      return (diff * 1e8).round() / 1e8;
    }
  }

  dynamic size() {
    final pointSize = this.getPointSize();
    if ((this.low != null && (this.low.isDateTime || this.low.isDate)) ||
        (this.high != null && (this.high.isDateTime || this.high.isDate))) {
      throw ArgumentError(
          'Size of Date, DateTime, and Time intervals is not supported');
    }

    final closed = this.toClosed();
    if ((closed.low != null && closed.low.isUncertainty) ||
        (closed.high != null && closed.high.isUncertainty)) {
      return null;
    } else if (closed.low.isQuantity) {
      if (closed.low.unit != closed.high.unit) {
        throw ArgumentError(
            'Cannot calculate size of Quantity Interval with different units');
      }
      final lowValue = closed.low.value;
      final highValue = closed.high.value;
      final diff = (highValue - lowValue).abs() + pointSize.value;
      return (diff * 1e8).round() / 1e8;
    } else {
      final diff = (closed.high - closed.low).abs() + pointSize.value;
      return (diff * 1e8).round() / 1e8;
    }
  }

  dynamic getPointSize() {
    dynamic pointSize;
    if (this.low != null) {
      if (this.low.isDateTime || this.low.isDate || this.low.isTime) {
        pointSize = CqlQuantities.simple(1, this.low.getPrecision());
      } else if (this.low.isQuantity) {
        pointSize = doSubtraction(successor(this.low), this.low);
      } else {
        pointSize = successor(this.low) - this.low;
      }
    } else if (this.high != null) {
      if (this.high.isDateTime || this.high.isDate || this.high.isTime) {
        pointSize = CqlQuantities.simple(1, this.high.getPrecision());
      } else if (this.high.isQuantity) {
        pointSize = doSubtraction(successor(this.high), this.high);
      } else {
        pointSize = successor(this.high) - this.high;
      }
    } else {
      throw ArgumentError('Point type of intervals cannot be determined.');
    }

    if (pointSize is num) {
      pointSize = CqlQuantities.simple(pointSize, '1');
    }

    return pointSize;
  }

  Interval toClosed() {
    // Calculate the closed flags. Despite the name of this function, if a boundary is null open,
    // we cannot close the boundary because that changes its meaning from "unknown" to "max/min value"
    final lowClosed = this.lowClosed || this.low != null;
    final highClosed = this.highClosed || this.high != null;

    if (this.pointType != null) {
      dynamic low;
      if (this.lowClosed && this.low == null) {
        low = minValueForType(this.pointType);
      } else if (!this.lowClosed && this.low != null) {
        low = successor(this.low);
      } else {
        low = this.low;
      }
      dynamic high;
      if (this.highClosed && this.high == null) {
        high = maxValueForType(this.pointType);
      } else if (!this.highClosed && this.high != null) {
        high = predecessor(this.high);
      } else {
        high = this.high;
      }
      if (low == null) {
        low = Uncertainty(low: minValueForType(this.pointType), high: high);
      }
      if (high == null) {
        high = Uncertainty(low: low, high: maxValueForType(this.pointType));
      }
      return Interval(
          low: low, high: high, lowClosed: lowClosed, highClosed: highClosed);
    } else {
      return Interval(
          low: this.low,
          high: this.high,
          lowClosed: lowClosed,
          highClosed: highClosed);
    }
  }

  @override
  String toString() {
    final start = this.lowClosed ? '[' : '(';
    final end = this.highClosed ? ']' : ')';
    return start + this.low.toString() + ', ' + this.high.toString() + end;
  }

  bool areDateTimes(dynamic x, dynamic y) {
    return [x, y].every((z) => z != null && z is AbstractDate);
  }

  bool areNumeric(dynamic x, dynamic y) {
    return [x, y].every((z) {
      return z is num || (z != null && z is Uncertainty && z.low is num);
    });
  }

  dynamic lowestNumericUncertainty(dynamic x, dynamic y) {
    if (x == null || !(x is Uncertainty)) {
      x = Uncertainty(low: x);
    }
    if (y == null || !(y is Uncertainty)) {
      y = Uncertainty(low: y);
    }
    final low = x.low < y.low ? x.low : y.low;
    final high = x.high < y.high ? x.high : y.high;
    if (low != high) {
      return Uncertainty(low: low, high: high);
    } else {
      return low;
    }
  }

  dynamic highestNumericUncertainty(dynamic x, dynamic y) {
    if (x == null || !(x is Uncertainty)) {
      x = Uncertainty(low: x);
    }
    if (y == null || !(y is Uncertainty)) {
      y = Uncertainty(low: y);
    }
    final low = x.low > y.low ? x.low : y.low;
    final high = x.high > y.high ? x.high : y.high;
    if (low != high) {
      return Uncertainty(low: low, high: high);
    } else {
      return low;
    }
  }
}
