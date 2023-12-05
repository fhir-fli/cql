import '../cql.dart'; // Assuming necessary imports are present

class ValueSetDef extends Expression {
  String name;
  String id;
  String? version;

  ValueSetDef(Map<String, dynamic> json)
      : name = json['name'],
        id = json['id'],
        version = json['version'],
        super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    final valueSet =
        ctx.codeService?.findValueSet(id, version) ?? CqlValueSet(id, version);
    ctx.rootContext().set(name, valueSet);
    return [valueSet];
  }
}

class ValueSetRef extends Expression {
  String name;
  String libraryName;

  ValueSetRef(Map<String, dynamic> json)
      : name = json['name'],
        libraryName = json['libraryName'],
        super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    var valueSet = ctx.getValueSet(name, libraryName);
    if (valueSet is Expression) {
      valueSet = valueSet.execute(ctx);
    }
    return valueSet;
  }
}

class AnyInValueSet extends Expression {
  List<Expression> codes;
  ValueSetRef valueSet;

  AnyInValueSet(Map<String, dynamic> json)
      : codes = build(json['codes']),
        valueSet = ValueSetRef(json['valueset']),
        super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    final List<dynamic> newValueSet = valueSet.execute(ctx);
    if (newValueSet.length != 1 || newValueSet.first is! CqlValueSet) {
      throw Exception('ValueSet must be provided to InValueSet function');
    }
    final newCodes =
        codes.map((e) => e.execute(ctx)).expand((element) => element).toList();
    return [
      newCodes.any((code) => (newValueSet.first as CqlValueSet).hasMatch(code))
    ];
  }
}

class InValueSet extends Expression {
  List<Expression>? code;
  ValueSetRef valueSet;

  InValueSet(Map<String, dynamic> json)
      : code = build(json['code']),
        valueSet = ValueSetRef(json['valueset']),
        super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    if (code == null) {
      return [false];
    }
    final List<dynamic>? codeResult =
        code?.map((e) => e.execute(ctx)).expand((element) => element).toList();
    if (codeResult == null) {
      return [false];
    }
    final List<dynamic> valueSetResult = valueSet.execute(ctx);
    if (valueSetResult.length != 1 || valueSetResult.first is! CqlValueSet) {
      throw Exception('ValueSet must be provided to InValueSet function');
    }
    return [
      (valueSetResult.first as CqlValueSet).hasMatch(codeResult)
    ]; // Assuming hasMatch logic is implemented
  }
}

class CodeSystemDef extends Expression {
  String name;
  String id;
  String version;

  CodeSystemDef(Map<String, dynamic> json)
      : name = json['name'],
        id = json['id'],
        version = json['version'],
        super.fromJson(json);

  @override
  List<dynamic> execute(Context _ctx) {
    return [CqlCodeSystem(id, version)];
  }
}

class CodeDef extends Expression {
  String name;
  String id;
  String systemName;
  String? display;

  CodeDef(Map<String, dynamic> json)
      : name = json['name'],
        id = json['id'],
        systemName = json['codeSystem']['name'],
        display = json['display'],
        super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    final system = ctx.getCodeSystem(this.systemName).execute(ctx);
    String? systemName;
    String? version;
    String? display;
    try {
      systemName = system[0].id;
    } catch (e) {
      systemName = null;
    }
    try {
      version = system[0].version;
    } catch (e) {
      version = null;
    }
    try {
      display = system[0].display;
    } catch (e) {
      display = null;
    }
    return [CqlCode(id, systemName, version, display)];
  }
}

class CodeRef extends Expression {
  String name;
  String library;

  CodeRef(Map<String, dynamic> json)
      : name = json['name'],
        library = json['libraryName'],
        super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    ctx = library.isNotEmpty ? ctx.getLibraryContext(library) : ctx;
    final codeDef = ctx.getCode(name);
    return codeDef != null ? codeDef.execute(ctx) : null;
  }
}

class ElmCode extends Expression {
  var code;
  String systemName;
  String version;
  String? display;

  ElmCode.fromJson(Map<String, dynamic> json)
      : code = json['code'],
        systemName = json['system']['name'],
        version = json['version'],
        display = json['display'],
        super.fromJson(json);

  bool get isCode {
    return true;
  }

  @override
  List<dynamic> execute(Context ctx) {
    final system = ctx.getCodeSystem(systemName) ?? {};
    return [CqlCode(code, system.id, version, display)];
  }
}

class ConceptDef extends Expression {
  String name;
  List<dynamic> codes;
  String? display;

  ConceptDef(Map<String, dynamic> json)
      : name = json['name'],
        display = json['display'],
        codes = json['code'],
        super.fromJson(json);

  @override
  List<CqlConcept> execute(Context ctx) {
    final codeResults = codes.map((code) {
      final codeDef = ctx.getCode(code['name']);
      return codeDef != null ? codeDef.execute(ctx) : null;
    }).toList();
    return [CqlConcept(codeResults, display)];
  }
}

class ConceptRef extends Expression {
  late String name;

  ConceptRef(Map<String, dynamic> json) : super.fromJson(json) {
    name = json['name'];
  }

  @override
  List<dynamic> execute(Context ctx) {
    final conceptDef = ctx.getConcept(name);
    return conceptDef != null ? conceptDef.execute(ctx) : null;
  }
}

class Concept extends Expression {
  late dynamic codes;
  String? display;

  Concept(Map<String, dynamic> json) : super.fromJson(json) {
    codes = json['code'];
    display = json['display'];
  }

  bool get isConcept => true;

  CqlCode toCode(Context ctx, dynamic code) {
    final system = ctx.getCodeSystem(code['system']['name']) ?? {};
    return CqlCode(
        code['code'], system['id'], code['version'], code['display']);
  }

  @override
  List<CqlConcept> execute(Context ctx) {
    final List<CqlCode> codeList = [];
    for (final code in codes) {
      codeList.add(toCode(ctx, code));
    }
    return [CqlConcept(codeList, display)];
  }
}

class CalculateAge extends Expression {
  late String precision;

  CalculateAge(Map<String, dynamic> json) : super.fromJson(json) {
    precision = json['precision'];
  }

  @override
  List<dynamic> execute(Context ctx) {
    final birthDate = execArgs(ctx);
    final asOf = (precision.toLowerCase() == 'year' ||
            precision.toLowerCase() == 'month')
        ? CqlDateTime.fromJSDate(ctx.getExecutionDateTime()).getDate()
        : CqlDateTime.fromJSDate(ctx.getExecutionDateTime());

    return calculateAge(precision, birthDate, asOf);
  }
}

class CalculateAgeAt extends Expression {
  late String precision;

  CalculateAgeAt(Map<String, dynamic> json) : super.fromJson(json) {
    precision = json['precision'];
  }

  @override
  List<dynamic> execute(Context ctx) {
    final List<dynamic> values = execArgs(ctx);
    final birthDate = values[0];
    final asOf = values[1];
    final timeZoneOffset = ctx.getExecutionDateTime()?.timezoneOffset;
    return calculateAge(precision, birthDate, asOf, timeZoneOffset);
  }
}

dynamic calculateAge(String precision, dynamic birthDate, dynamic asOf,
    [int? timeZoneOffset]) {
  if (birthDate != null && asOf != null) {
    if (asOf.isDate && birthDate.isDateTime) {
      birthDate = (birthDate as CqlDateTime).getDate();
    } else if (asOf.isDateTime && birthDate.isDate) {
      birthDate = birthDate.getDateTime(timeZoneOffset);
    }
    final result = birthDate.durationBetween(asOf, precision.toLowerCase());
    return result?.isPoint() ? result.low : result;
  }
  return null;
}
