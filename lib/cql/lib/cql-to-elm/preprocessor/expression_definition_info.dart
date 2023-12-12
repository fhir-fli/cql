import 'package:antlr4/antlr4.dart';

import '../antlr4/cqlParser.dart';
import 'base_info.dart';

class ExpressionDefinitionInfo extends BaseInfo {
  String? name;
  String? context;

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

  @override
  ExpressionDefinitionContext? getDefinition() {
    return super.getDefinition() as ExpressionDefinitionContext?;
  }

  void setDefinition(ParserRuleContext value) {
    super.setDefinition(value);
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
