import '../../cql.dart';

/// Element within a Tuple expression providing the value of a specific element within a tuple literal expression.
class TupleElement {
  /// Value expression of the tuple element.
  Expression value;

  /// Name of the tuple element.
  String name;

  TupleElement({required this.value, required this.name});

  factory TupleElement.fromJson(Map<String, dynamic> json) => TupleElement(
        value: Expression.fromJson(json['value']),
        name: json['name'],
      );

  Map<String, dynamic> toJson() => {
        'value': value.toJson(),
        'name': name,
      };
}