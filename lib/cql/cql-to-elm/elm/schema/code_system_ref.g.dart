// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_system_ref.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CodeSystemRef _$CodeSystemRefFromJson(Map<String, dynamic> json) =>
    CodeSystemRef(
      name: json['name'] as String?,
      libraryName: json['libraryName'] as String?,
    )
      ..annotation = (json['annotation'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList()
      ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['resultTypeSpecifier'] as Map<String, dynamic>)
      ..localId = json['localId'] as String?
      ..locator = json['locator'] as String?
      ..resultTypeName = json['resultTypeName'] as String?;

Map<String, dynamic> _$CodeSystemRefToJson(CodeSystemRef instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('annotation', instance.annotation);
  writeNotNull('resultTypeSpecifier', instance.resultTypeSpecifier?.toJson());
  writeNotNull('localId', instance.localId);
  writeNotNull('locator', instance.locator);
  writeNotNull('resultTypeName', instance.resultTypeName);
  writeNotNull('name', instance.name);
  writeNotNull('libraryName', instance.libraryName);
  return val;
}
