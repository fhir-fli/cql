// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parameter_type_specifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParameterTypeSpecifier _$ParameterTypeSpecifierFromJson(
        Map<String, dynamic> json) =>
    ParameterTypeSpecifier(
      parameterName: json['parameterName'] as String,
    )
      ..annotation = (json['annotation'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
          .toList()
      ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['resultTypeSpecifier'] as Map<String, dynamic>)
      ..localId = json['localId'] as String?
      ..locator = json['locator'] as String?
      ..resultTypeName = json['resultTypeName'] as String?;

Map<String, dynamic> _$ParameterTypeSpecifierToJson(
    ParameterTypeSpecifier instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'annotation', instance.annotation?.map((e) => e.toJson()).toList());
  writeNotNull('resultTypeSpecifier', instance.resultTypeSpecifier?.toJson());
  writeNotNull('localId', instance.localId);
  writeNotNull('locator', instance.locator);
  writeNotNull('resultTypeName', instance.resultTypeName);
  val['parameterName'] = instance.parameterName;
  return val;
}
