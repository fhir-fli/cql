import '../../../cql/cql-to-elm/elm/elm.dart';

class CqlValueSet {
  String oid;
  String? version;
  List<dynamic> codes;
  String? name;

  CqlValueSet(this.oid, [this.version, List<dynamic>? codes])
      : codes = codes ?? [];

  bool get isValueSet => true;

  bool hasMatch(dynamic code) {
    final codesList = toCodeList(code);
    if (codesList.length == 1 && codesList[0] is String) {
      var matchFound = false;
      var multipleCodeSystemsExist = false;
      for (final codeItem in codes) {
        if (codeItem['system'] != codes[0]['system']) {
          multipleCodeSystemsExist = true;
        }
        if (codeItem['code'] == codesList[0]) {
          matchFound = true;
        }
        if (multipleCodeSystemsExist && matchFound) {
          throw Exception(
              'In (valueset) is ambiguous -- multiple codes with multiple code systems exist in value set.');
        }
      }
      return matchFound;
    } else {
      return codesInList(codesList, codes);
    }
  }
}
