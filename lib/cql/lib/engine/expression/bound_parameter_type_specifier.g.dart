// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bound_parameter_type_specifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoundParameterTypeSpecifier _$BoundParameterTypeSpecifierFromJson(
        Map<String, dynamic> json) =>
    BoundParameterTypeSpecifier(
      parameterName: json['parameterName'] as String,
      boundType: json['boundType'] as String,
      elementTypeSpecifier: json['elementTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['elementTypeSpecifier'] as Map<String, dynamic>),
    )
      ..annotation = (json['annotation'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
          .toList()
      ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['resultTypeSpecifier'] as Map<String, dynamic>)
      ..resultTypeName = json['resultTypeName'] as String?
      ..localId = json['localId'] as String?
      ..locator = json['locator'] as String?;

Map<String, dynamic> _$BoundParameterTypeSpecifierToJson(
    BoundParameterTypeSpecifier instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'annotation', instance.annotation?.map((e) => e.toJson()).toList());
  writeNotNull('resultTypeSpecifier', instance.resultTypeSpecifier?.toJson());
  writeNotNull('resultTypeName', instance.resultTypeName);
  writeNotNull('localId', instance.localId);
  writeNotNull('locator', instance.locator);
  val['parameterName'] = instance.parameterName;
  val['boundType'] = instance.boundType;
  writeNotNull('elementTypeSpecifier', instance.elementTypeSpecifier?.toJson());
  return val;
}
