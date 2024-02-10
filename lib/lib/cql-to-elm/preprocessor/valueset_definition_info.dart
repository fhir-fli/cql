import 'package:antlr4/antlr4.dart';

import '../antlr4/cql_parser.dart';
import 'base_info.dart';

class ValuesetDefinitionInfo extends BaseInfo {
  String? name;

  @override
  String? header;

  @override
  Interval? headerInterval;

  @override
  ValuesetDefinitionContext? getDefinition() {
    return super.getDefinition() as ValuesetDefinitionContext?;
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

  ValuesetDefinitionInfo withName(String value) {
    setName(value);
    return this;
  }

  ValuesetDefinitionInfo withDefinition(ValuesetDefinitionContext value) {
    setDefinition(value);
    return this;
  }
}
