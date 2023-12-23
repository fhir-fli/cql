import 'package:antlr4/antlr4.dart';

import '../antlr4/cql_parser.dart';
import 'base_info.dart';

class CodesystemDefinitionInfo extends BaseInfo {
  String? name;

  @override
  CodesystemDefinitionContext? getDefinition() {
    return super.getDefinition() as CodesystemDefinitionContext?;
  }

  @override
  void setDefinition(ParserRuleContext value) {
    super.setDefinition(value);
  }

  String? getName() {
    return name;
  }

  void setName(String value) {
    name = value;
  }

  CodesystemDefinitionInfo withName(String value) {
    setName(value);
    return this;
  }

  CodesystemDefinitionInfo withDefinition(CodesystemDefinitionContext value) {
    setDefinition(value);
    return this;
  }
}
