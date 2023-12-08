import '../elm.dart';

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
