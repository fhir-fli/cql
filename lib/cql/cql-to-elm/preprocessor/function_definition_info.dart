import '../../cql.dart';

class FunctionDefinitionInfo extends BaseInfo {
  String? name;
  String? context;
  FunctionHeader? functionHeader;

  String? getName() {
    return name;
  }

  void setName(String value) {
    name = value;
  }

  void setPreCompileOutput(FunctionHeader functionHeader) {
    this.functionHeader = functionHeader;
  }

  FunctionHeader? getPreCompileOutput() {
    return functionHeader;
  }

  String? getContext() {
    return context;
  }

  void setContext(String value) {
    context = value;
  }

  @override
  FunctionDefinitionContext? getDefinition() {
    return super.getDefinition() as FunctionDefinitionContext?;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    final FunctionDefinitionInfo typedOther = other as FunctionDefinitionInfo;
    return name == typedOther.name &&
        context == typedOther.context &&
        functionHeader == typedOther.functionHeader;
  }

  @override
  int get hashCode {
    return Object.hash(name, context, functionHeader);
  }

  @override
  String toString() {
    return '$runtimeType['
        'name: $name, '
        'context: $context, '
        'preCompileOutput: $functionHeader]';
  }
}
