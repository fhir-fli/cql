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
  Future<dynamic> exec(Context ctx) async {
    final valueSet = await ctx.codeService?.findValueSet(id, version) ??
        CqlValueSet(id, version);
    ctx.rootContext().set(name, valueSet);
    return valueSet;
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
  Future<dynamic> exec(Context ctx) async {
    var valueSet = ctx.getValueSet(name, libraryName);
    if (valueSet is Expression) {
      valueSet = await valueSet.exec(ctx);
    }
    return valueSet;
  }
}

class AnyInValueSet extends Expression {
  var codes;
  ValueSetRef valueSet;

  AnyInValueSet(Map<String, dynamic> json)
      : codes = build(json['codes']),
        valueSet = ValueSetRef(json['valueset']),
        super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final newValueSet = await valueSet.exec(ctx);
    if (newValueSet == null || !(newValueSet is CqlValueSet)) {
      throw Exception('ValueSet must be provided to InValueSet function');
    }

    final newCodes = await codes.exec(ctx);
    return newCodes != null &&
        newCodes.any((code) => newValueSet
            .hasMatch(code)); // Assuming hasMatch logic is implemented
  }
}

class InValueSet extends Expression {
  var code;
  ValueSetRef valueSet;

  InValueSet(Map<String, dynamic> json)
      : code = build(json['code']),
        valueSet = ValueSetRef(json['valueset']),
        super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    if (code == null) {
      return false;
    }
    final codeResult = await code.exec(ctx);
    if (codeResult == null) {
      return false;
    }
    final valueSetResult = await valueSet.exec(ctx);
    if (valueSetResult == null || !(valueSetResult is CqlValueSet)) {
      throw Exception('ValueSet must be provided to InValueSet function');
    }
    return valueSetResult
        .hasMatch(codeResult); // Assuming hasMatch logic is implemented
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
  Future<dynamic> exec(Context _ctx) async {
    return CqlCodeSystem(id, version);
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
  Future<dynamic> exec(Context ctx) async {
    final system = await ctx.getCodeSystem(systemName).execute(ctx);
    return ElmCode(
        code: id,
        systemName: system.id,
        version: system.version,
        display: display);
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
  Future<dynamic> exec(Context ctx) async {
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

  ElmCode(
      {required this.code,
      required this.systemName,
      required this.version,
      this.display});

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
  Future<dynamic> exec(Context ctx) async {
    final system = ctx.getCodeSystem(systemName) ?? {};
    return CqlCode(code, system.id, version, display);
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
  Future<dynamic> exec(Context ctx) async {
    final codeResults = await Future.wait<dynamic>(codes.map((code) async {
      final codeDef = ctx.getCode(code['name']);
      return codeDef != null ? codeDef.execute(ctx) : null;
    }));
    return CqlConcept(codeResults, display);
  }
}

class ConceptRef extends Expression {
  late String name;

  ConceptRef(Map<String, dynamic> json) : super.fromJson(json) {
    name = json['name'];
  }

  @override
  Future<dynamic> exec(Context ctx) async {
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
  Future<dynamic> exec(Context ctx) async {
    final List<CqlCode> codeList = [];
    for (final code in codes) {
      codeList.add(toCode(ctx, code));
    }
    return CqlConcept(codeList, display);
  }
}

class CalculateAge extends Expression {
  late String precision;

  CalculateAge(Map<String, dynamic> json) : super.fromJson(json) {
    precision = json['precision'];
  }

  @override
  Future<dynamic> exec(Context ctx) async {
    final birthDate = await execArgs(ctx);
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
  Future<dynamic> exec(Context ctx) async {
    final List<dynamic> values = await execArgs(ctx);
    final birthDate = values[0];
    final asOf = values[1];
    final timeZoneOffset = ctx.getExecutionDateTime().timezoneOffset;
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
