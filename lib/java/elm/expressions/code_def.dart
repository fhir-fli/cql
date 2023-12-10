import '../../../cql/cql-to-elm/elm/elm.dart';

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
