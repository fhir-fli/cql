import '../../../cql/cql-to-elm/elm/elm.dart';

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
