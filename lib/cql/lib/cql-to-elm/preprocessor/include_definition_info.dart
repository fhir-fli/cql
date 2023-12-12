import 'package:antlr4/antlr4.dart';

import '../antlr4/cqlParser.dart';
import 'base_info.dart';

class IncludeDefinitionInfo extends BaseInfo {
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

  IncludeDefinitionInfo withName(String value) {
    setName(value);
    return this;
  }

  IncludeDefinitionInfo withVersion(String value) {
    setVersion(value);
    return this;
  }

  IncludeDefinitionInfo withLocalName(String value) {
    setLocalName(value);
    return this;
  }

  @override
  IncludeDefinitionContext? getDefinition() {
    return super.getDefinition() as IncludeDefinitionContext?;
  }

  void setDefinition(ParserRuleContext value) {
    super.setDefinition(value);
  }

  IncludeDefinitionInfo withDefinition(IncludeDefinitionContext value) {
    setDefinition(value);
    return this;
  }
}
