import 'package:antlr4/antlr4.dart';

import '../antlr4/cqlParser.dart';
import 'base_info.dart';

class ParameterDefinitionInfo extends BaseInfo {
  String? name;

  String? getName() {
    return name;
  }

  void setName(String value) {
    name = value;
  }

  @override
  ParameterDefinitionContext? getDefinition() {
    return super.getDefinition() as ParameterDefinitionContext?;
  }

  void setDefinition(ParserRuleContext value) {
    super.setDefinition(value);
  }

  ParameterDefinitionInfo withName(String value) {
    setName(value);
    return this;
  }

  ParameterDefinitionInfo withDefinition(ParameterDefinitionContext value) {
    setDefinition(value);
    return this;
  }
}
