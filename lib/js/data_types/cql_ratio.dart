import '../cql.dart';

class CqlRatio {
  final CqlQuantity numerator;
  final CqlQuantity denominator;

  CqlRatio(this.numerator, this.denominator);

  bool get isRatio => true;

  CqlRatio clone() {
    return CqlRatio(numerator.copyWith(), denominator.copyWith());
  }

  @override
  String toString() {
    return '${numerator.toString()} : ${denominator.toString()}';
  }

  bool equals(Object other) {
    if (other is CqlRatio) {
      final dividedThis = numerator / denominator;
      final dividedOther = (other).numerator / other.denominator;
      return dividedThis.equals(dividedOther);
    } else {
      return false;
    }
  }

  bool equivalent(Object other) => equals(other);
}
