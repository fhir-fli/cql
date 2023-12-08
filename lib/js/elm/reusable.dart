import '../cql.dart';

class ExpressionDef extends Expression {
  String name;
  dynamic context;
  dynamic expression;

  ExpressionDef.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        context = json['context'],
        expression = build(json['expression']),
        super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final value = expression != null ? await expression.execute(ctx) : null;
    ctx.rootContext().set(name, value);
    return value;
  }
}

class ExpressionRef extends Expression {
  String? name;
  String? library;

  ExpressionRef.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        library = json['libraryName'],
        super.fromJson(json);

  @override
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
  String name;
  dynamic expression;
  Parameter? parameters;

  FunctionDef.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        expression = build(json['expression']),
        parameters = json['operand'],
        super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    return this;
  }
}

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

class OperandRef extends Expression {
  String name;

  OperandRef.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    return ctx.get(name);
  }
}

class IdentifierRef extends Expression {
  String? name;
  String? library;

  IdentifierRef.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        library = json['libraryName'],
        super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    var lib = library != null ? ctx.get(library) : null;
    var val = lib != null ? lib.get(name) : ctx.get(name);
    if (val == null) {
      final parts = name?.split('.');
      if (parts == null || parts.isEmpty) {
        throw Exception('Could not find $name');
      }
      val = ctx.get(parts.first);
      if (val != null && parts.length > 1) {
        var currObj = val;
        for (var part in parts.skip(1)) {
          var obj;
          if (currObj != null) {
            obj = currObj[part];
            if (obj == null && currObj is Function) {
              obj = currObj.call(currObj);
            }
          }
          currObj = obj is Function ? obj.call(currObj) : obj;
        }
        val = currObj;
      }
    }
    if (val is Function) {
      return val(ctx.contextValues);
    } else {
      return val;
    }
  }
}
