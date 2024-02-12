import '../../cql.dart';

class Operator {
  String? libraryName;
  AccessModifier accessLevel = AccessModifier.public;
  bool isFluent = false;
  bool isExternal = false;
  FunctionDef? functionDef;
  final String? name;
  final Signature? signature;
  String? resultType;

  Operator.fromFunctionDef(FunctionDef functionDef)
      : name = functionDef.name,
        signature = Signature(functionDef.operand
            ?.map((operand) => operand.resultTypeName)
            .toList()),
        resultType = functionDef.resultTypeName {
    this.functionDef = functionDef;
    accessLevel = functionDef.accessLevel ?? AccessModifier.public;
    isFluent = functionDef.fluent ?? false;
    isExternal = functionDef.external ?? false;
  }

  Operator({this.name, this.signature, this.resultType}) {
    if (name == null || name!.isEmpty) {
      throw ArgumentError("name is null or empty");
    }
  }

  void setLibraryName(String libraryName) {
    if (libraryName.isEmpty) {
      throw ArgumentError("libraryName is null or empty.");
    }
    this.libraryName = libraryName;
  }

  void setAccessLevel(AccessModifier accessLevel) {
    this.accessLevel = accessLevel;
  }

  Operator withAccessLevel(AccessModifier accessLevel) {
    setAccessLevel(accessLevel);
    return this;
  }

  void setFluent(bool isFluent) {
    this.isFluent = isFluent;
  }

  Operator withFluent(bool isFluent) {
    setFluent(isFluent);
    return this;
  }

  void setExternal(bool isExternal) {
    this.isExternal = isExternal;
  }

  Operator withExternal(bool isExternal) {
    setExternal(isExternal);
    return this;
  }

  void setFunctionDef(FunctionDef functionDef) {
    this.functionDef = functionDef;
  }

  Operator withFunctionDef(FunctionDef functionDef) {
    setFunctionDef(functionDef);
    return this;
  }

  void setResultType(String resultType) {
    this.resultType = resultType;
  }

  String? getName() => name;
  Signature? getSignature() => signature;
  String? getResultType() => resultType;
}
