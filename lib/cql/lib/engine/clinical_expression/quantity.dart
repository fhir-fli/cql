import '../../cql.dart';

/// The Quantity type defines a clinical quantity. For example, the quantity 10
/// days or 30 mmHg. The value is a decimal, while the unit is expected to be a
/// valid UCUM unit.
class Quantity extends Expression {
  final String unit;
  final num value;

  Quantity({required this.value, required this.unit});

  factory Quantity.fromJson(Map<String, dynamic> json) => Quantity(
        value: json['value'] is String
            ? num.parse(json['value'])
            : json['value'] is num
                ? json['value']
                : throw ArgumentError('Quantity value must be a number'),
        unit: json['unit']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'value': value,
        'unit': unit,
        'type': type,
      };

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'Quantity';
}
