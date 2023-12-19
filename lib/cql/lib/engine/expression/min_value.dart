import '../../cql.dart';

/// Operator to return the minimum representable value for the given type.
/// The MinValue operator is defined for the Integer, Decimal, Date, DateTime, and Time types.
/// For any other type, attempting to invoke MinValue results in an error.
/// Note that implementations may choose to represent the minimum DateTime value using a constant offset such as UTC.
class MinValue extends Expression {
  final QName valueType;

  MinValue(this.valueType);

  factory MinValue.fromJson(Map<String, dynamic> json) => MinValue(
        json['valueType']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'valueType': valueType,
      };
}
