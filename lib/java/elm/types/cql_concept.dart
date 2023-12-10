import '../../../cql/cql-to-elm/elm/elm.dart';

class CqlConcept {
  List<dynamic> codes;
  String? display;

  CqlConcept(List<dynamic>? codes, [this.display]) : this.codes = codes ?? [];

  bool get isConcept => true;

  bool hasMatch(dynamic code) {
    return codesInList(toCodeList(code), codes);
  }
}
