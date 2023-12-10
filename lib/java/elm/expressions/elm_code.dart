import '../../../cql/cql-to-elm/elm/elm.dart';

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
