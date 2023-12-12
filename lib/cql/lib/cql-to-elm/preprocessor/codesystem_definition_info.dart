import 'package:antlr4/antlr4.dart';

import '../antlr4/cqlParser.dart';
import 'base_info.dart';

class CodesystemDefinitionInfo extends BaseInfo {
  String? name;

  String? getName() {
    return name;
  }

  void setName(String value) {
    name = value;
  }

  @override
  CodesystemDefinitionContext? getDefinition() {
    return super.getDefinition() as CodesystemDefinitionContext?;
  }

  void setDefinition(ParserRuleContext value) {
    super.setDefinition(value);
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
