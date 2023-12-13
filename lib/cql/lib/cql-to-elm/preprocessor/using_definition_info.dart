import 'package:antlr4/antlr4.dart';

import '../antlr4/cql_parser.dart';
import 'base_info.dart';

class UsingDefinitionInfo extends BaseInfo {
  String? namespaceName;
  String? name;
  String? version;
  String? localName;

  String? getNamespaceName() {
    return namespaceName;
  }

  void setNamespaceName(String value) {
    namespaceName = value;
  }

  String? getName() {
    return name;
  }

  void setName(String value) {
    name = value;
  }

  String? getVersion() {
    return version;
  }

  void setVersion(String value) {
    version = value;
  }

  String? getLocalName() {
    return localName;
  }

  void setLocalName(String value) {
    localName = value;
  }

  UsingDefinitionInfo withNamespaceName(String value) {
    setNamespaceName(value);
    return this;
  }

  UsingDefinitionInfo withName(String value) {
    setName(value);
    return this;
  }

  UsingDefinitionInfo withVersion(String value) {
    setVersion(value);
    return this;
  }

  UsingDefinitionInfo withLocalName(String value) {
    setLocalName(value);
    return this;
  }

  @override
  UsingDefinitionContext? getDefinition() {
    return super.getDefinition() as UsingDefinitionContext?;
  }

  @override
  void setDefinition(ParserRuleContext value) {
    super.setDefinition(value);
  }

  UsingDefinitionInfo withDefinition(UsingDefinitionContext value) {
    setDefinition(value);
    return this;
  }
}
