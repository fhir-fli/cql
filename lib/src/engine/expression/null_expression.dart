import 'package:cql/src/internal.dart';

/// Null operator returning a null or missing information marker.
class NullExpression extends Literal {
  NullExpression({
    required super.valueType,
    this.resultType,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory NullExpression.fromJson(Map<String, dynamic> json) => NullExpression(
        valueType: json['valueType'] != null
            ? QName.fromJson(json['valueType'] as String)
            : QName.fromElmType('Null'),
        resultType: json['resultTypeName'] != null
            ? QName.fromJson(json['resultTypeName'] as String)
            : null,
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
                .toList()
            : null,
        localId: json['localId'] as String?,
        locator: json['locator'] as String?,
        resultTypeName: json['resultTypeName'] as String?,
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(
                json['resultTypeSpecifier'] as Map<String, dynamic>,
              )
            : null,
      );
  final QName? resultType;

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{
      if (resultType != null) 'resultTypeName': resultType!.toJson(),
      'type': type,
    };
    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  @override
  String get type => 'Null';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async => null;
}
