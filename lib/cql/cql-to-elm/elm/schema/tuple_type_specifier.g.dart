// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tuple_type_specifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TupleTypeSpecifier _$TupleTypeSpecifierFromJson(Map<String, dynamic> json) =>
    TupleTypeSpecifier(
      element: (json['element'] as List<dynamic>?)
          ?.map((e) =>
              TupleTypeSpecifierElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..type = json['type'] as String;

Map<String, dynamic> _$TupleTypeSpecifierToJson(TupleTypeSpecifier instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('element', instance.element?.map((e) => e.toJson()).toList());
  val['type'] = instance.type;
  return val;
}
