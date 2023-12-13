import 'package:antlr4/antlr4.dart';

import '../antlr4/cql_parser.dart';
import 'base_info.dart';

class ConceptDefinitionInfo extends BaseInfo {
  String? name;

  String? getName() {
    return name;
  }

  void setName(String value) {
    name = value;
  }

  @override
  ConceptDefinitionContext? getDefinition() {
    return super.getDefinition() as ConceptDefinitionContext?;
  }

  @override
  void setDefinition(ParserRuleContext value) {
    super.setDefinition(value);
  }

  ConceptDefinitionInfo withName(String value) {
    setName(value);
    return this;
  }

  ConceptDefinitionInfo withDefinition(ConceptDefinitionContext value) {
    setDefinition(value);
    return this;
  }
}
