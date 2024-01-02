import '../../cql.dart';

/// Instance element used within an Instance expression.
class InstanceElement {
  /// Required name of the instance element.
  String name;

  /// Value expression of the instance element.
  Expression value;

  InstanceElement({
    required this.name,
    required this.value,
  });

  factory InstanceElement.fromJson(Map<String, dynamic> json) =>
      InstanceElement(
        name: json['name'],
        value: Expression.fromJson(json['value']),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'name': name,
        'value': value.toJson(),
      };

  @override
  String toString() => toJson().toString();

  String get type => 'InstanceElement';
}
