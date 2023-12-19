import '../../../../cql.dart';

/// Operator to determine if the first interval starts before and overlaps the second interval.
/// Returns true if Start(i1) < Start(i2) and End(i1) >= Start(i2).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class OverlapsBefore extends BinaryExpression {
  final DateTimePrecision? precision;

  OverlapsBefore(
      {required Expression left,
      required Expression right,
      this.precision,
      required super.operands});
}
