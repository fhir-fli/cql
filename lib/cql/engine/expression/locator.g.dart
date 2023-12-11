// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Locator _$LocatorFromJson(Map<String, dynamic> json) => Locator(
      startLine: json['startLine'] as int?,
      startChar: json['startChar'] as int?,
      endLine: json['endLine'] as int?,
      endChar: json['endChar'] as int?,
    );

Map<String, dynamic> _$LocatorToJson(Locator instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('startLine', instance.startLine);
  writeNotNull('startChar', instance.startChar);
  writeNotNull('endLine', instance.endLine);
  writeNotNull('endChar', instance.endChar);
  return val;
}
