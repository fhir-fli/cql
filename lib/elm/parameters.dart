import '../cql.dart';

class ParameterDef extends ExpressionDef {
  String? name;
  String? parameterType;
  AccessModifier accessLevel;
  Expression? defaultExpr;
  TypeSpecifier? parameterTypeSpecifier;

  ParameterDef({
    this.name,
    this.parameterType,
    this.accessLevel = AccessModifier.Public,
    this.defaultExpr,
    this.parameterTypeSpecifier,
  }) : super(
          name: name,
        );

  ParameterDef.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        parameterType = json['parameterType'],
        accessLevel = json['accessLevel'] ?? AccessModifier.Public,
        defaultExpr = json['default'] != null ? build(json['default']) : null,
        parameterTypeSpecifier = json['parameterTypeSpecifier'],
        super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    if (ctx.parameters?[name] != null) {
      return ctx.parameters![name];
    } else if (name != null && ctx.getParentParameter(name!) != null) {
      final parentParam = ctx.getParentParameter(name!);
      return parentParam.defaultExpr != null
          ? await parentParam.defaultExpr!.execute(ctx)
          : parentParam;
    } else if (defaultExpr != null) {
      await defaultExpr!.exec(ctx);
    }
  }
}

class ParameterRef extends Expression {
  String? name;
  String? library;

  ParameterRef({this.name, this.library});

  Future<dynamic> exec(Context ctx) async {
    ctx = library != null ? ctx.getLibraryContext(library) : ctx;
    final param = name == null ? null : ctx.getParameter(name!);
    return param != null ? await param.execute(ctx) : null;
  }
}
