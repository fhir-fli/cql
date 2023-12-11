// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tuple_type_specifier_element.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TupleTypeSpecifierElement _$TupleTypeSpecifierElementFromJson(
        Map<String, dynamic> json) =>
    TupleTypeSpecifierElement(
      elementType:
          TypeSpecifier.fromJson(json['elementType'] as Map<String, dynamic>),
      name: json['name'] as String,
    );

Map<String, dynamic> _$TupleTypeSpecifierElementToJson(
        TupleTypeSpecifierElement instance) =>
    <String, dynamic>{
      'elementType': instance.elementType.toJson(),
      'name': instance.name,
    };
