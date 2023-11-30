import 'package:fhir/r4.dart';

import 'quantity/elm_quantity.dart';

typedef ElmRatio = Ratio;

extension ElmRatios on ElmRatio {
  bool get isRatio => true;

  Ratio clone() => this.copyWith();

  bool get isValidElmRatio => numerator != null && denominator != null;

  Quantity? get numeratorQuantity => numerator;
  Quantity? get denominatorQuantity => denominator;

  bool equals(Ratio other) {
    if (other.isValidElmRatio && isValidElmRatio) {
      final dividedThis = (numerator as Quantity) / (denominator as Quantity);
      final dividedOther =
          (other.numerator as Quantity) / (other.denominator as Quantity);
      return dividedThis == dividedOther;
    } else {
      return false;
    }
  }

  bool equivalent(Ratio other) => equals(other);
}
