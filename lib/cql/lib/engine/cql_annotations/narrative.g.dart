// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narrative.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Narrative _$NarrativeFromJson(Map<String, dynamic> json) => Narrative(
      r: json['r'] as String?,
      s: (json['s'] as List<dynamic>?)
          ?.map((e) => Narrative.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NarrativeToJson(Narrative instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('r', instance.r);
  writeNotNull('s', instance.s?.map((e) => e.toJson()).toList());
  return val;
}
