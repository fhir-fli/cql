import '../../elm.dart';

class Literal extends Expression {
  late String valueType;
  late dynamic value;

  Literal.fromJson(Map<String, dynamic> json)
      : this.valueType = json['valueType'],
        this.value = json['value'],
        super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
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
