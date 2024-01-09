import '../../cql.dart';

/// Null operator returning a null or missing information marker.
class NullExpression extends Literal {
  final QName? resultType;
  NullExpression({required super.valueType, this.resultType});

  factory NullExpression.fromJson(Map<String, dynamic> json) => NullExpression(
        valueType: json['valueType'] != null
            ? QName.fromJson(json['valueType'])
            : QName.fromLocalPart('Null'),
        resultType: json['resultTypeName'] != null
            ? QName.fromJson(json['resultTypeName'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() => {
        if (resultType != null) 'resultTypeName': resultType!.toJson(),
        'type': type,
      };

  @override
  String get type => 'Null';
}
