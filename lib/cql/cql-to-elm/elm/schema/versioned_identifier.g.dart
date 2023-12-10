// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'versioned_identifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VersionedIdentifier _$VersionedIdentifierFromJson(Map<String, dynamic> json) =>
    VersionedIdentifier(
      id: json['id'] as String?,
      system: json['system'] as String?,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$VersionedIdentifierToJson(VersionedIdentifier instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('system', instance.system);
  writeNotNull('version', instance.version);
  return val;
}
