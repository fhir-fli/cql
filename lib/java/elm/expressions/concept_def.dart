import '../../../cql/cql-to-elm/elm/elm.dart';

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
