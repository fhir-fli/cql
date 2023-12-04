import '../cql.dart';

class ElmRatio {
  final ElmQuantity numerator;
  final ElmQuantity denominator;

  ElmRatio(this.numerator, this.denominator);

  bool get isRatio => true;

  ElmRatio clone() {
    return ElmRatio(numerator.copyWith(), denominator.copyWith());
  }

  @override
  String toString() {
    return '${numerator.toString()} : ${denominator.toString()}';
  }

  bool equals(Object other) {
    if (other is ElmRatio) {
      final dividedThis = numerator / denominator;
      final dividedOther = (other).numerator / other.denominator;
      return dividedThis.equals(dividedOther);
    } else {
      return false;
    }
  }

  bool equivalent(Object other) => equals(other);
}
