import '../../cql.dart';

/// The Quantity type defines a clinical quantity. For example, the quantity 10
/// days or 30 mmHg. The value is a decimal, while the unit is expected to be a
/// valid UCUM unit.
class Quantity extends Expression {
  late double value;
  late String unit;

  Quantity({required this.value, required this.unit});
}
