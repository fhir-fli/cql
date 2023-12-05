class CqlCode {
  String code;
  String? system;
  String? version;
  String? display;

  CqlCode(this.code, [this.system, this.version, this.display]);

  bool get isCode => true;

  bool hasMatch(dynamic code) {
    if (code is String) {
      // Specific behavior may differ from the specification. Matching codesystem behavior.
      return code == this.code;
    } else {
      return codesInList(toCodeList(code), [this]);
    }
  }

  @override
  String toString() {
    return 'CqlCode{code: $code, system: $system, version: $version, display: $display}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CqlCode &&
          runtimeType == other.runtimeType &&
          code == other.code &&
          system == other.system &&
          version == other.version &&
          display == other.display;

  @override
  int get hashCode =>
      code.hashCode ^ system.hashCode ^ version.hashCode ^ display.hashCode;
}

class CqlConcept {
  List<dynamic> codes;
  String? display;

  CqlConcept(List<dynamic>? codes, [this.display]) : this.codes = codes ?? [];

  bool get isConcept => true;

  bool hasMatch(dynamic code) {
    return codesInList(toCodeList(code), codes);
  }
}

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

List<dynamic> toCodeList(dynamic c) {
  if (c == null) {
    return [];
  } else if (c is List) {
    List<dynamic> list = [];
    for (dynamic c2 in c) {
      list.addAll(toCodeList(c2));
    }
    return list;
  } else {
    try {
      if (c.codes is List) {
        return c.codes;
      } else {
        return [c];
      }
    } catch (e) {
      return [c];
    }
  }
}

bool codesInList(List<dynamic> cl1, List<dynamic> cl2) {
  // test each code in c1 against each code in c2 looking for a match
  return cl1.any((c1) => cl2.any((c2) {
        // only the left argument (cl1) can contain strings. cl2 will only contain codes.
        if (c1 is String) {
          // for "string in codesystem" this should compare the string to
          // the code's "code" field according to the specification.
          return c1 == c2 is CqlCode ? (c2 as CqlCode).code : c2;
        } else if (c1 is CqlCode && c2 is CqlCode) {
          return codesMatch(c1, c2);
        } else {
          return false;
        }
      }));
}

bool codesMatch(CqlCode code1, CqlCode code2) {
  return code1.code == code2.code && code1.system == code2.system;
}

class CqlCodeSystem {
  String id;
  String? version;

  CqlCodeSystem(this.id, [this.version]);
}
