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
    );

Map<String, dynamic> _$BoundParameterTypeSpecifierToJson(
    BoundParameterTypeSpecifier instance) {
  final val = <String, dynamic>{
    'parameterName': instance.parameterName,
    'boundType': instance.boundType,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('elementTypeSpecifier', instance.elementTypeSpecifier?.toJson());
  return val;
}
