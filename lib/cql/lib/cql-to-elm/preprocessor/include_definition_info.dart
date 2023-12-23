import 'package:antlr4/antlr4.dart';

import '../antlr4/cql_parser.dart';
import 'base_info.dart';

class IncludeDefinitionInfo extends BaseInfo {
  String? localName;
  String? name;
  String? namespaceName;
  String? version;

  @override
  IncludeDefinitionContext? getDefinition() {
    return super.getDefinition() as IncludeDefinitionContext?;
  }

  @override
  void setDefinition(ParserRuleContext value) {
    super.setDefinition(value);
  }

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

  IncludeDefinitionInfo withDefinition(IncludeDefinitionContext value) {
    setDefinition(value);
    return this;
  }
}
