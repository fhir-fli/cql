import '../../../../cql.dart';

/// Operator for converting a value to a specific type.
/// Converts a value to a specific type.
/// The result of the operator is the value of the argument converted to the
/// target type, if possible.
/// If no valid conversion exists from the actual value to the target type,
/// the result is null.
/// This operator supports conversion between String and each of Boolean,
/// Integer, Decimal, Quantity, Ratio, Date, DateTime, and Time, from Integer
/// to Decimal or Quantity, from Decimal to Quantity, between Date and DateTime,
/// from Code to Concept, and between Concept and List<Code>.
/// Conversion between String and Date/DateTime/Time is performed using the
/// ISO-8601 standard format: YYYY-MM-DDThh:mm:ss(+|-)hh:mm.
class Convert extends UnaryExpression {
  /// Target type to convert to.
  QName? toType;

  /// Type specifier for the target type.
  TypeSpecifier? toTypeSpecifier;

  Convert({this.toTypeSpecifier, this.toType, required super.operand});

  factory Convert.fromJson(Map<String, dynamic> json) => Convert(
      toTypeSpecifier: json['toTypeSpecifier'],
      toType: json['toType'],
      operand: json['operand']!);

  @override
  Map<String, dynamic> toJson() => {
        'toTypeSpecifier': toTypeSpecifier,
        'toType': toType,
        'operand': operand,
      };
}
