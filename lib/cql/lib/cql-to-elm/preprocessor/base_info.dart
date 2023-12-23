import 'package:antlr4/antlr4.dart'; // Assuming the ANTLR package is used in Dart

class BaseInfo {
  ParseTree? definition;
  String? header;
  Interval? headerInterval;

  String? getHeader() {
    return header;
  }

  void setHeader(String header) {
    this.header = header;
  }

  Interval? getHeaderInterval() {
    return headerInterval;
  }

  void setHeaderInterval(Interval headerInterval) {
    this.headerInterval = headerInterval;
  }

  ParseTree? getDefinition() {
    return definition;
  }

  void setDefinition(ParserRuleContext definition) {
    this.definition = definition;
  }
}
