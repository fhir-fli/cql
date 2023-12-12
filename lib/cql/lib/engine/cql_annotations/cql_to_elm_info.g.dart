// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cql_to_elm_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CqlToElmInfo _$CqlToElmInfoFromJson(Map<String, dynamic> json) => CqlToElmInfo(
      translatorVersion: json['translatorVersion'] as String?,
      translatorOptions: json['translatorOptions'] as String?,
    );

Map<String, dynamic> _$CqlToElmInfoToJson(CqlToElmInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('translatorVersion', instance.translatorVersion);
  writeNotNull('translatorOptions', instance.translatorOptions);
  return val;
}
