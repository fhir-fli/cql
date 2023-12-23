import 'package:antlr4/antlr4.dart';

import '../antlr4/cql_parser.dart';
import 'base_info.dart';

class ExpressionDefinitionInfo extends BaseInfo {
  String? context;
  String? name;

  @override
  ExpressionDefinitionContext? getDefinition() {
    return super.getDefinition() as ExpressionDefinitionContext?;
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

  String? getContext() {
    return context;
  }

  void setContext(String value) {
    context = value;
  }

  ExpressionDefinitionInfo withName(String value) {
    setName(value);
    return this;
  }

  ExpressionDefinitionInfo withDefinition(ExpressionDefinitionContext value) {
    setDefinition(value);
    return this;
  }
}
