import '../../cql.dart';

/// Null operator returning a null or missing information marker.
class NullExpression extends Expression {
  final String type = 'Null';
  final QName? valueType;

  NullExpression({this.valueType});

  factory NullExpression.fromJson(Map<String, dynamic> json) => NullExpression(
        valueType: json['valueType'] != null
            ? QName.fromJson(json['valueType'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (valueType != null) {
      json['valueType'] = valueType!.toJson();
    }
    json['type'] = type;
    return json;
  }
}
