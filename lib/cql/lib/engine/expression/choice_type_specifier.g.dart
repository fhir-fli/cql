// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_type_specifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChoiceTypeSpecifier _$ChoiceTypeSpecifierFromJson(Map<String, dynamic> json) =>
    ChoiceTypeSpecifier(
      choice: (json['choice'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
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

Map<String, dynamic> _$ChoiceTypeSpecifierToJson(ChoiceTypeSpecifier instance) {
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
  writeNotNull('choice', instance.choice?.map((e) => e.toJson()).toList());
  return val;
}
