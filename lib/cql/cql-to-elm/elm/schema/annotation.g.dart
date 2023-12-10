// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annotation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Annotation _$AnnotationFromJson(Map<String, dynamic> json) => Annotation(
      s: json['s'] == null
          ? null
          : Narrative.fromJson(json['s'] as Map<String, dynamic>),
      locator: json['locator'] == null
          ? null
          : Locator.fromJson(json['locator'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnnotationToJson(Annotation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('s', instance.s?.toJson());
  writeNotNull('locator', instance.locator?.toJson());
  return val;
}
