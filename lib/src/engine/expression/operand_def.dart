import 'package:cql/src/internal.dart';

class OperandDefs {
  OperandDefs({this.operands});

  factory OperandDefs.fromJson(Map<String, dynamic> json) {
    return OperandDefs(
      operands: json['operands'] != null
          ? (json['operands'] as List)
              .map((i) => OperandDef.fromJson(i as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  List<OperandDef>? operands;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (operands != null) {
      data['operands'] = operands!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

/// Operand definition to a function within the body of a function definition.
class OperandDef extends Element {
  OperandDef({required this.name, this.operandTypeSpecifier, this.operandType});

  factory OperandDef.fromJson(Map<String, dynamic> json) {
    return OperandDef(
      operandTypeSpecifier: json['operandTypeSpecifier'] != null
          ? TypeSpecifierExpression.fromJson(
              json['operandTypeSpecifier'] as Map<String, dynamic>)
          : null,
      name: json['name'] as String,
      operandType: json['operandType'] != null
          ? QName.fromJson(json['operandType'] as String)
          : null,
    );
  }

  /// Name of the operand.
  String name;

  /// Qualified name of the operand type, optional.
  QName? operandType;

  /// Type specifier for the operand.
  TypeSpecifierExpression? operandTypeSpecifier;

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{'name': name};
    if (operandTypeSpecifier != null) {
      data['operandTypeSpecifier'] = operandTypeSpecifier!.toJson();
    }
    if (operandType != null) {
      data['operandType'] = operandType!.toJson();
    }
    return data;
  }
}
