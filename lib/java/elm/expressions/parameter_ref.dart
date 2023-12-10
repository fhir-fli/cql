import '../../../cql/cql-to-elm/elm/elm.dart';

class ParameterRef extends Expression {
  late String name;
  late dynamic library;

  ParameterRef.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    name = json['name'] as String;
    library = json['libraryName'];
  }

  Future<dynamic> exec(Context ctx) async {
    ctx = library != null ? ctx.getLibraryContext(library) : ctx;
    final param = ctx.getParameter(name);
    return param != null ? await param.execute(ctx) : null;
  }
}
