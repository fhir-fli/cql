import 'package:antlr4/antlr4.dart';

import '../antlr4/cql_parser.dart';
import 'base_info.dart';

class CodeDefinitionInfo extends BaseInfo {
  String? name;

  String? getName() {
    return name;
  }

  void setName(String value) {
    name = value;
  }

  CodeDefinitionInfo withName(String value) {
    setName(value);
    return this;
  }

  @override
  CodeDefinitionContext? getDefinition() {
    return super.getDefinition() as CodeDefinitionContext?;
  }

  @override
  void setDefinition(ParserRuleContext value) {
    super.setDefinition(value);
  }

  CodeDefinitionInfo withDefinition(CodeDefinitionContext value) {
    setDefinition(value);
    return this;
  }
}
