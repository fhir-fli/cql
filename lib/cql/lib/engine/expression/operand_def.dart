import '../../cql.dart';

class OperandDefs {
  List<OperandDef>? operands;

  OperandDefs({this.operands});

  factory OperandDefs.fromJson(Map<String, dynamic> json) {
    return OperandDefs(
      operands: json['operands'] != null
          ? (json['operands'] as List)
              .map((i) => OperandDef.fromJson(i))
              .toList()
          : null,
    );
  }

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
  /// Type specifier for the operand.
  TypeSpecifier? operandTypeSpecifier;

  /// Name of the operand.
  String name;

  /// Qualified name of the operand type, optional.
  QName? operandType;

  OperandDef({this.operandTypeSpecifier, required this.name, this.operandType});

  factory OperandDef.fromJson(Map<String, dynamic> json) {
    return OperandDef(
      operandTypeSpecifier: json['operandTypeSpecifier'] != null
          ? TypeSpecifier.fromJson(json['operandTypeSpecifier'])
          : null,
      name: json['name'] as String,
      operandType: json['operandType'] != null
          ? QName.fromJson(json['operandType'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (operandTypeSpecifier != null) {
      data['operandTypeSpecifier'] = operandTypeSpecifier!.toJson();
    }
    data['name'] = name;
    if (operandType != null) {
      data['operandType'] = operandType!.toJson();
    }
    return data;
  }
}
