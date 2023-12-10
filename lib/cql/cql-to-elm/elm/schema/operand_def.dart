import 'package:json_annotation/json_annotation.dart';

import '../../../cql.dart';

part 'operand_def.g.dart';

@JsonSerializable()
class OperandDefs {
  List<OperandDef>? operands;

  OperandDefs({this.operands});

  factory OperandDefs.fromJson(Map<String, dynamic> json) =>
      _$OperandDefsFromJson(json);

  Map<String, dynamic> toJson() => _$OperandDefsToJson(this);
}

/// Operand definition to a function within the body of a function definition.
@JsonSerializable()
class OperandDef extends Element {
  /// Type specifier for the operand.
  TypeSpecifier? operandTypeSpecifier;

  /// Name of the operand.
  String name;

  /// Qualified name of the operand type, optional.
  QName? operandType;

  OperandDef({this.operandTypeSpecifier, required this.name, this.operandType});

  factory OperandDef.fromJson(Map<String, dynamic> json) =>
      _$OperandDefFromJson(json);

  Map<String, dynamic> toJson() => _$OperandDefToJson(this);
}
