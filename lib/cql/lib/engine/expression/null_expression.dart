import '../../cql.dart';

/// Null operator returning a null or missing information marker.
class NullExpression extends Literal {
  NullExpression({QName? valueType})
      : super(valueType: valueType ?? QName.fromLocalPart('Null'));

  factory NullExpression.fromJson(Map<String, dynamic> json) => NullExpression(
        valueType: json['valueType'] != null
            ? QName.fromJson(json['valueType'])
            : QName.fromLocalPart('Null'),
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'valueType': valueType.toJson(),
      };

  @override
  String get type => 'Null';
}
