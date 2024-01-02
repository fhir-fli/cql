import '../../../../cql.dart';

/// Operator to check if a value can be converted to a specific type.
/// Returns true if the given value can be converted to a specific type,
/// and false otherwise.
/// This operator returns true for conversion between String and each of
/// Boolean, Integer, Decimal, Quantity, Ratio, Date, DateTime, and Time, from
/// Integer to Decimal or Quantity, from Decimal to Quantity, between Date and
/// DateTime, from Code to Concept, and between Concept and List<Code>.
/// Conversion between String and Date/DateTime/Time is checked using the
/// ISO-8601 standard format: YYYY-MM-DDThh:mm:ss(+|-)hh:mm.
class CanConvert extends UnaryExpression {
  /// Target type to convert to.
  QName? toType;

  /// Type specifier for the target type.
  TypeSpecifier? toTypeSpecifier;

  CanConvert({this.toTypeSpecifier, this.toType, required super.operand});

  factory CanConvert.fromJson(Map<String, dynamic> json) => CanConvert(
        operand: Expression.fromJson(json['operand']!),
      )
        ..toTypeSpecifier = json['toTypeSpecifier']
        ..toType = json['toType'];

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'operand': operand.toJson(),
        if (toTypeSpecifier != null)
          'toTypeSpecifier': toTypeSpecifier!.toJson(),
        if (toType != null) 'toType': toType!.toJson(),
      };

  @override
  String get type => 'CanConvert';
}
