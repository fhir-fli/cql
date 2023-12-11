import '../../cql.dart';

/// The Ratio type defines a ratio between two quantities. For example, the
/// titre 1:128, or the concentration ratio 5 mg/10 mL. The numerator and
/// denominator are both quantities.
class Ratio extends Expression {
  late Quantity numerator;
  late Quantity denominator;

  Ratio({required this.numerator, required this.denominator});
}
