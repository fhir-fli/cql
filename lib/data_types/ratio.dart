import '../cql.dart';

class ElmRatio {
  final ElmQuantity numerator;
  final ElmQuantity denominator;

  ElmRatio(this.numerator, this.denominator);

  bool get isRatio {
    return true;
  }

  ElmRatio clone() {
    return ElmRatio(numerator, denominator);
  }

  @override
  String toString() {
    return '${numerator.toString()} : ${denominator.toString()}';
  }

  bool equals(ElmRatio other) {
    if (other.isRatio) {
      final dividedThis = numerator / denominator;
      final dividedOther = other.numerator / other.denominator;
      return dividedThis == dividedOther;
    } else {
      return false;
    }
  }

  bool equivalent(ElmRatio other) => equals(other);
}
