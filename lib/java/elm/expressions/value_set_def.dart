import '../../../cql/cql-to-elm/elm/elm.dart';

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
