import '../../cql.dart';

/// Operator to return the maximum representable value for the given type.
/// The MaxValue operator is defined for the Integer, Decimal, Date, DateTime, and Time types.
/// For any other type, attempting to invoke MaxValue results in an error.
/// Note that implementations may choose to represent the maximum DateTime value using a constant offset such as UTC.
class MaxValue extends Expression {
  final QName valueType;

  MaxValue(this.valueType);

  factory MaxValue.fromJson(Map<String, dynamic> json) => MaxValue(
        json['valueType']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType,
      };
}
