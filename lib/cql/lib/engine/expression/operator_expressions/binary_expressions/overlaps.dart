import '../../../../cql.dart';

/// Operator to determine if the first interval overlaps the second interval.
/// Returns true if End(i1) >= Start(i2) and Start(i1) <= End(i2).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class Overlaps extends BinaryExpression {
  final DateTimePrecision? precision;

  Overlaps(
      {required Expression left,
      required Expression right,
      this.precision,
      required super.operands});
}
