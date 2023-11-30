import 'package:fhir/r4.dart';

typedef ElmCode = Coding;

extension ElmCodes on ElmCode {
  bool hasMatch(dynamic code) {
    if (code is String) {
      return code == this.code.toString();
    } else {
      return codesInList(toCodeList(code), [this]);
    }
  }
}

typedef ElmConcept = CodeableConcept;

extension ElmConcepts on ElmConcept {
  List<dynamic>? get codes => coding;
  String? get display => text;

  bool hasMatch(Coding code) {
    return codesInList(toCodeList(code), codes ?? []);
  }
}

List<dynamic> toCodeList(dynamic c) {
  if (c == null) {
    return [];
  } else if (c is List) {
    List<dynamic> list = [];
    for (dynamic c2 in c) {
      list.addAll(toCodeList(c2));
    }
    return list;
  } else if (c.codes is List) {
    return c.codes;
  } else {
    return [c];
  }
}

bool codesInList(List<dynamic> cl1, List<dynamic> cl2) {
  // test each code in c1 against each code in c2 looking for a match
  return cl1.any((c1) => cl2.any((c2) {
        // only the left argument (cl1) can contain strings. cl2 will only contain codes.
        if (c1 is String) {
          // for "string in codesystem" this should compare the string to
          // the code's "code" field according to the specification.
          return c1 == c2.code;
        } else {
          return codesMatch(c1, c2);
        }
      }));
}

bool codesMatch(Coding code1, Coding code2) {
  return code1.code == code2.code && code1.system == code2.system;
}

typedef ElmCodeSystem = CodeSystem;

extension ElmCodeSystems on ElmCodeSystem {
  String? get id => fhirId;
}

abstract class Vocabulary {
  String get id;
  String? get version;
  String? get name;
}

// typedef ElmValueSet = ValueSet;

class ElmValueSet extends Vocabulary {
  final List<CodeSystem>? codeSystem;
  String id;
  String? version;
  String? name;

  ElmValueSet({required this.id, this.version, this.name, this.codeSystem});

  bool get isValueSet => true;

  bool hasMatch(dynamic code) {
    List<dynamic> codesList = toCodeList(code);
    // InValueSet String Overload
    if (codesList.length == 1 && codesList[0] is String) {
      bool matchFound = false;
      bool multipleCodeSystemsExist = false;
      for (CodeSystem codeItem in codeSystem ?? <CodeSystem>[]) {
        // Confirm all code systems match
        if (codeItem.name != codeSystem![0].name) {
          multipleCodeSystemsExist = true;
        }
        if (codeItem.id == codesList[0]) {
          matchFound = true;
        }
        if (multipleCodeSystemsExist && matchFound) {
          throw Exception(
              'In (valueset) is ambiguous -- multiple codes with multiple code systems exist in value set.');
        }
      }
      return matchFound;
    } else {
      return codesInList(codesList, codeSystem ?? <CodeSystem>[]);
    }
  }
}
