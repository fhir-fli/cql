import 'package:collection/collection.dart';

import '../../../cql.dart';

class FunctionHeader {
  final FunctionDef functionDef;
  final TypeSpecifier? resultType;

  bool isCompiled = false;

  FunctionHeader(this.functionDef, this.resultType);

  static FunctionHeader noReturnType(FunctionDef functionDef) {
    return FunctionHeader(functionDef, null);
  }

  static FunctionHeader withReturnType(
      FunctionDef functionDef, TypeSpecifier resultType) {
    return FunctionHeader(functionDef, resultType);
  }

  String getMangledName() {
    final sb = StringBuffer();
    sb.write(functionDef.name);
    sb.write('_');
    for (OperandDef od in functionDef.operand ?? <OperandDef>[]) {
      sb.write(od.operandTypeSpecifier != null
          ? od.operandTypeSpecifier!.toString()
          : 'void');
    }
    sb.write('_');
    return sb.toString();
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FunctionHeader &&
          runtimeType == other.runtimeType &&
          functionDef == other.functionDef &&
          const DeepCollectionEquality().equals(resultType, other.resultType);

  @override
  int get hashCode => functionDef.hashCode ^ resultType.hashCode;

  @override
  String toString() {
    return 'FunctionHeader{functionDef: $functionDef, resultType: $resultType}';
  }
}
