import '../cql.dart';

class Uncertainty {
  dynamic low;
  dynamic high;

  Uncertainty({this.low = null, this.high}) {
    final gt = (a, b) {
      if (a.runtimeType != b.runtimeType) {
        return false;
      }
      if (a is Comparable && b is Comparable) {
        return a.compareTo(b) > 0;
      } else {
        return a > b;
      }
    };

    final isNonEnumerable = (val) =>
        val != null &&
        (val is CqlCode || val is CqlConcept || val is CqlValueSet);

    if (this.high == null) {
      this.high = this.low;
    }
    if (isNonEnumerable(this.low) || isNonEnumerable(this.high)) {
      this.low = this.high = null;
    }
    if (this.low != null &&
        this.high != null &&
        (gt(this.low, this.high) ?? false)) {
      print('lower');
      final temp = this.low;
      this.low = this.high;
      this.high = temp;
    }
  }

  bool get isUncertainty => true;

  Uncertainty copy() {
    var newLow = this.low;
    var newHigh = this.high;
    if (this.low is Function) {
      newLow = this.low();
    }
    if (this.high is Function) {
      newHigh = this.high();
    }

    return Uncertainty(low: newLow, high: newHigh);
  }

  bool isPoint() {
    bool? lte(a, b) {
      if (a.runtimeType != b.runtimeType) {
        return null;
      }
      return Comparable.compare(a, b) <= 0;
    }

    bool? gte(a, b) {
      if (a.runtimeType != b.runtimeType) {
        return null;
      }
      return Comparable.compare(a, b) >= 0;
    }

    return this.low != null &&
        this.high != null &&
        (lte(this.low, this.high) ?? false) &&
        (gte(this.low, this.high) ?? false);
  }

  bool? equals({required dynamic other, dynamic nowThis}) {
    if ((nowThis ?? this).isPoint()) {
      if (!(other is Uncertainty)) {
        return equals(other: other, nowThis: (nowThis ?? this).low);
      }

      if (other.isPoint()) {
        return equals(other: other.low, nowThis: (nowThis ?? this).low);
      }
    }

    other = Uncertainty.from(other);
    return ThreeValuedLogic.not(
        ThreeValuedLogic.or([this.lessThan(other), this.greaterThan(other)]));
  }

  bool? lessThan(dynamic other) {
    bool? lt(a, b) {
      if (a.runtimeType != b.runtimeType) {
        return null;
      }
      return Comparable.compare(a, b) < 0;
    }

    other = Uncertainty.from(other);
    final bestCase = this.low == null ||
        other.high == null ||
        (lt(this.low, other.high) ?? false);
    final worstCase = this.high != null &&
        other.low != null &&
        (lt(this.high, other.low) ?? false);
    if (bestCase == worstCase) {
      return bestCase;
    } else {
      return null;
    }
  }

  bool? greaterThan(dynamic other) {
    return Uncertainty.from(other).lessThan(this);
  }

  bool? lessThanOrEquals(dynamic other) {
    return ThreeValuedLogic.not(this.greaterThan(Uncertainty.from(other)));
  }

  bool? greaterThanOrEquals(dynamic other) {
    return ThreeValuedLogic.not(this.lessThan(Uncertainty.from(other)));
  }

  static Uncertainty from(dynamic obj) {
    if (obj != null && obj is Uncertainty) {
      return obj;
    } else {
      return Uncertainty(low: obj);
    }
  }

  @override
  String toString() {
    return 'Uncertainty{low: $low, high: $high}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Uncertainty &&
          runtimeType == other.runtimeType &&
          low == other.low &&
          high == other.high;

  @override
  int get hashCode => low.hashCode ^ high.hashCode;
}
