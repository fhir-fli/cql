import 'package:antlr4/antlr4.dart';

import '../antlr4/cqlParser.dart';
import 'base_info.dart';

class ValuesetDefinitionInfo extends BaseInfo {
  String? name;
  String? header;
  Interval? headerInterval;

  String? getName() {
    return name;
  }

  void setName(String value) {
    name = value;
  }

  @override
  ValuesetDefinitionContext? getDefinition() {
    return super.getDefinition() as ValuesetDefinitionContext?;
  }

  void setDefinition(ParserRuleContext value) {
    super.setDefinition(value);
  }

  ValuesetDefinitionInfo withName(String value) {
    setName(value);
    return this;
  }

  ValuesetDefinitionInfo withDefinition(ValuesetDefinitionContext value) {
    setDefinition(value);
    return this;
  }
}
