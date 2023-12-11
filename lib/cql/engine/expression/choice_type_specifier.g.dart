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
    );

Map<String, dynamic> _$ChoiceTypeSpecifierToJson(ChoiceTypeSpecifier instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('choice', instance.choice?.map((e) => e.toJson()).toList());
  return val;
}
