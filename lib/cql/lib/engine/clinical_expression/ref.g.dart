// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ref.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ref _$RefFromJson(Map<String, dynamic> json) => Ref(
      name: json['name'] as String?,
      libraryName: json['libraryName'] as String?,
      type: json['type'] as String?,
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

Map<String, dynamic> _$RefToJson(Ref instance) {
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
  writeNotNull('name', instance.name);
  writeNotNull('libraryName', instance.libraryName);
  writeNotNull('type', instance.type);
  return val;
}
