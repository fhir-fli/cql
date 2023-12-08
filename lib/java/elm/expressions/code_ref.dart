import '../elm.dart';

class CodeRef extends Expression {
  String name;
  String library;

  CodeRef(Map<String, dynamic> json)
      : name = json['name'],
        library = json['libraryName'],
        super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    ctx = library.isNotEmpty ? ctx.getLibraryContext(library) : ctx;
    final codeDef = ctx.getCode(name);
    return codeDef != null ? codeDef.execute(ctx) : null;
  }
}
