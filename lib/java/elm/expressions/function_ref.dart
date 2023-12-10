import '../../../cql/cql-to-elm/elm/elm.dart';

class FunctionRef extends Expression {
  String name;
  String library;

  FunctionRef.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        library = json['libraryName'],
        super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    var functionDefs, childCtx;
    final lib = ctx.get(library);
    functionDefs = lib != null ? lib.getFunction(name) : null;
    final libCtx = ctx.getLibraryContext(library);
    childCtx = libCtx != null ? libCtx.childContext() : null;
    final args = await execArgs(ctx);

    functionDefs =
        functionDefs.where((f) => f.parameters.length == args.length).toList();

    if (functionDefs.length > 1) {
      functionDefs = functionDefs.where((f) {
        var match = true;
        for (var i = 0; i < args.length && match; i++) {
          if (args[i] != null) {
            var operandTypeSpecifier = f.parameters[i].operandTypeSpecifier;
            if (operandTypeSpecifier == null &&
                f.parameters[i].operandType != null) {
              operandTypeSpecifier = {
                'name': f.parameters[i].operandType,
                'type': 'NamedTypeSpecifier'
              };
            }
            match = ctx.matchesTypeSpecifier(args[i], operandTypeSpecifier);
          }
        }
        return match;
      }).toList();
    }

    if (functionDefs.length > 1) {
      // TODO: Calculate a score based on quality of matches
    }

    if (functionDefs.isEmpty) {
      throw Exception('no function with matching signature could be found');
    }

    final functionDef = functionDefs.last;
    for (var i = 0; i < functionDef.parameters.length; i++) {
      childCtx!.set(functionDef.parameters[i].name, args[i]);
    }
    return functionDef.expression.execute(childCtx!);
  }
}
