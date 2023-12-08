import '../elm.dart';

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
