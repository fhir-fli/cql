import '../antlr4/cql_parser.dart';
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
}
