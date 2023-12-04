import '../cql.dart';

class Literal extends Expression {
  late String valueType;
  late dynamic value;

  Literal.fromJson(Map<String, dynamic> json)
      : this.valueType = json['valueType'],
        this.value = json['value'],
        super.fromJson(json);

  @override
  Future<List<dynamic>> execute(Context ctx) async {
    return this.value;
  }

  static Literal from(Map<String, dynamic> json) {
    switch (json['valueType']) {
      case '{urn:hl7-org:elm-types:r1}Boolean':
        return BooleanLiteral.fromJson(json);
      case '{urn:hl7-org:elm-types:r1}Integer':
        return IntegerLiteral.fromJson(json);
      case '{urn:hl7-org:elm-types:r1}Decimal':
        return DecimalLiteral.fromJson(json);
      case '{urn:hl7-org:elm-types:r1}String':
        return StringLiteral.fromJson(json);
      default:
        return Literal.fromJson(json);
    }
  }
}

class BooleanLiteral extends Literal {
  BooleanLiteral.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    this.value = this.value == 'true';
  }

  bool get isBooleanLiteral {
    return true;
  }

  @override
  Future<List<dynamic>> execute(Context ctx) async {
    return this.value;
  }
}

class IntegerLiteral extends Literal {
  IntegerLiteral.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    this.value = int.parse(this.value, radix: 10);
  }

  bool get isIntegerLiteral {
    return true;
  }

  @override
  Future<List<dynamic>> execute(Context ctx) async {
    return this.value;
  }
}

class DecimalLiteral extends Literal {
  DecimalLiteral.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    this.value = double.parse(this.value);
  }

  bool get isDecimalLiteral {
    return true;
  }

  @override
  Future<List<dynamic>> execute(Context ctx) async {
    return this.value;
  }
}

class StringLiteral extends Literal {
  StringLiteral.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  bool get isStringLiteral {
    return true;
  }

  @override
  Future<List<dynamic>> execute(Context ctx) async {
    // TODO: Remove these replacements when CQL-to-ELM fixes bug: https://github.com/cqframework/clinical_quality_language/issues/82
    return this.value.replaceAll(r"\'", "'").replaceAll(r'\"', '"');
  }
}
