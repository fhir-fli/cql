import '../../cql.dart';

/// Literal expression defining a single scalar value.
class Literal extends Expression {
  /// Qualified name of the value type.
  QName valueType;

  /// Value of the literal, optional.
  dynamic value;

  final String type = 'Literal';

  Literal({required this.valueType, this.value});

  factory Literal.fromJson(Map<String, dynamic> json) {
    final valueType = QName.fromJson(json['valueType']);
    final value = json['value'];
    return Literal(valueType: valueType, value: value);
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{
      'valueType': valueType.toString(),
    };
    if (value != null) {
      json['value'] = value;
    }
    json['type'] = 'Literal';
    return json;
  }

  @override
  String toString() => 'Literal{valueType: $valueType, value: $value}';
}
