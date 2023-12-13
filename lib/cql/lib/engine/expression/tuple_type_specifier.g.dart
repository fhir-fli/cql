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
    )
      ..annotation = (json['annotation'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
          .toList()
      ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['resultTypeSpecifier'] as Map<String, dynamic>)
      ..resultTypeName = json['resultTypeName'] as String?
      ..localId = json['localId'] as String?
      ..locator = json['locator'] as String?
      ..type = json['type'] as String;

Map<String, dynamic> _$TupleTypeSpecifierToJson(TupleTypeSpecifier instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'annotation', instance.annotation?.map((e) => e.toJson()).toList());
  writeNotNull('resultTypeSpecifier', instance.resultTypeSpecifier?.toJson());
  writeNotNull('resultTypeName', instance.resultTypeName);
  writeNotNull('localId', instance.localId);
  writeNotNull('locator', instance.locator);
  writeNotNull('element', instance.element?.map((e) => e.toJson()).toList());
  val['type'] = instance.type;
  return val;
}
