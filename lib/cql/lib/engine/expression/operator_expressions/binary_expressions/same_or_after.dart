import '../../../../cql.dart';

/// Operator to compare two Date, DateTime, or Time values to the specified precision to determine if the first argument is the same or after the second argument.
/// If no precision is specified, the comparison is performed beginning with years (or hours for time values) and proceeding to the finest precision specified in either input.
/// For Date values, precision must be one of year, month, or day.
/// For DateTime values, precision must be one of year, month, day, hour, minute, second, or millisecond.
/// For Time values, precision must be one of hour, minute, second, or millisecond.
class SameOrAfter extends BinaryExpression {
  final DateTimePrecision? precision;

  SameOrAfter({this.precision, required super.operands});
}