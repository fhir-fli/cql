import 'package:antlr4/antlr4.dart';

import '../antlr4/cqlParser.dart';
import 'base_info.dart';

class ContextDefinitionInfo extends BaseInfo {
  String? context;

  String? getContext() {
    return context;
  }

  void setContext(String contextValue) {
    context = contextValue;
  }

  @override
  ContextDefinitionContext? getDefinition() {
    return super.getDefinition() as ContextDefinitionContext?;
  }

  void setDefinition(ParserRuleContext definition) {
    super.setDefinition(definition);
  }
}
