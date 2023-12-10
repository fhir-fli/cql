// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operand_def.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperandDefs _$OperandDefsFromJson(Map<String, dynamic> json) => OperandDefs(
      operands: (json['operands'] as List<dynamic>?)
          ?.map((e) => OperandDef.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OperandDefsToJson(OperandDefs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('operands', instance.operands?.map((e) => e.toJson()).toList());
  return val;
}

OperandDef _$OperandDefFromJson(Map<String, dynamic> json) => OperandDef(
      operandTypeSpecifier: json['operandTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['operandTypeSpecifier'] as Map<String, dynamic>),
      name: json['name'] as String,
      operandType: json['operandType'] == null
          ? null
          : QName.fromJson(json['operandType'] as Map<String, dynamic>),
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

Map<String, dynamic> _$OperandDefToJson(OperandDef instance) {
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
  writeNotNull('operandTypeSpecifier', instance.operandTypeSpecifier?.toJson());
  val['name'] = instance.name;
  writeNotNull('operandType', instance.operandType?.toJson());
  return val;
}
