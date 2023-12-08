import '../elm.dart';

class ParameterDef extends Expression {
  late String name;
  late dynamic defaultValue;
  late dynamic parameterTypeSpecifier;

  ParameterDef.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    name = json['name'] as String;
    defaultValue = build(json['default']);
    parameterTypeSpecifier = json['parameterTypeSpecifier'];
  }

  Future<dynamic> exec(Context ctx) async {
    // If context parameters contain the name, return value.
    if (ctx.parameters?[name] != null) {
      return ctx.parameters?[name];
    } else if (ctx.getParentParameter(name) != null) {
      final parentParam = ctx.getParentParameter(name)!;
      return parentParam.defaultValue != null
          ? await parentParam.defaultValue.execute(ctx)
          : parentParam;
    } else if (defaultValue != null) {
      await defaultValue.execute(ctx);
    }
  }
}
