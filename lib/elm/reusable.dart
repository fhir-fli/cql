import '../cql.dart';

class ExpressionDef extends Expression {
  late String name;
  late dynamic context;
  late dynamic expression;

  ExpressionDef.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    name = json['name'] as String;
    context = json['context'];
    expression = build(json['expression']);
  }

  Future<dynamic> exec(Context ctx) async {
    final value = expression != null ? await expression.execute(ctx) : null;
    ctx.rootContext().set(name, value);
    return value;
  }
}

class ExpressionRef extends Expression {
  late String? name;
  late String? library;

  ExpressionRef.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    name = json['name'] as String;
    library = json['libraryName'];
  }

  Future<dynamic> exec(Context ctx) async {
    ctx = library != null ? ctx.getLibraryContext(library) : ctx;
    var value = ctx.get(name);
    if (value is Expression) {
      value = await value.execute(ctx);
    }
    return value;
  }
}

class FunctionDef extends Expression {
  late String name;
  late dynamic expression;
  dynamic parameters;

  FunctionDef.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    name = json['name'] as String;
    expression = build(json['expression']);
    parameters = json['operand'];
  }

  Future<dynamic> exec(Context _ctx) async {
    return this;
  }
}
