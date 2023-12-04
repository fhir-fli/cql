import '../cql.dart';

class ExpressionDef extends Expression {
  String? name;
  String? context;
  Expression? expression;
  AccessModifier accessLevel;

  ExpressionDef({
    this.name,
    this.expression,
    this.context,
    this.accessLevel = AccessModifier.Public,
  });

  // Constructor to parse JSON and set values
  ExpressionDef.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        context = json['context'],
        expression = build(json['expression']),
        accessLevel = json['accessLevel'] == 'Private'
            ? AccessModifier.Private
            : AccessModifier.Public;

  @override
  Future<dynamic> exec(Context ctx) async {
    final value = expression != null ? await expression!.exec(ctx) : null;
    ctx.rootContext().set(name, value);
    return value;
  }
}

class ExpressionRef extends Expression {
  String? name;
  String? library;

  ExpressionRef({this.name, this.library});

  // Constructor to parse JSON and set values
  ExpressionRef.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        library = json['library'];

  @override
  Future<dynamic> exec(Context ctx) async {
    ctx = library != null ? ctx.getLibraryContext(library!) : ctx;
    var value = ctx.get(name);
    if (value is Expression) {
      value = await value.exec(ctx);
    }
    return value;
  }
}

class FunctionDef extends ExpressionDef {
  bool? external;
  List<OperandDef>? operand;

  FunctionDef({
    String? name,
    String? context,
    AccessModifier accessLevel = AccessModifier.Public,
    Expression? expression,
    this.external,
    this.operand,
  }) : super(
          name: name,
          context: context,
          accessLevel: accessLevel,
          expression: expression,
        );

  FunctionDef.fromJson(Map<String, dynamic> json)
      : external = json['external'],
        operand = (json['operand'] as List<dynamic>?)
            ?.map((item) => OperandDef.fromJson(item))
            .toList(),
        super.fromJson(json) {
    if (json['expression'] != null) {
      expression = build(json['expression']) as Expression;
    }
  }

  @override
  Future<dynamic> exec(Context ctx) async {
    return this;
  }
}

class FunctionRef extends ExpressionRef {
  List<TypeSpecifier>? signature;
  List<Expression>? operand;

  FunctionRef({
    String? name,
    String? library,
    this.signature,
    this.operand,
  }) : super(name: name, library: library);

  FunctionRef.fromJson(Map<String, dynamic> json)
      : signature = (json['signature'] as List<dynamic>?)
            ?.map((spec) => TypeSpecifier.fromJson(spec))
            .toList(),
        operand = (json['operand'] as List<dynamic>?)
            ?.map((expr) => Expression.fromJson(expr))
            .toList(),
        super.fromJson(json);

  Future<dynamic> exec(Context ctx) async {
    List<dynamic>? functionDefs;
    Context? childCtx;

    if (library != null) {
      final lib = ctx.get(library!);
      functionDefs = lib != null ? lib.getFunction(name) : null;
      final libCtx = ctx.getLibraryContext(library!);
      childCtx = libCtx != null ? libCtx.childContext() : null;
    } else {
      functionDefs = ctx.get(name) as List<dynamic>?;
      childCtx = ctx.childContext();
    }

    final args = await execArgs(ctx);

    // Filter out functions with the wrong number of arguments.
    if (functionDefs != null) {
      functionDefs = functionDefs
          .where((f) => f.parameters.length == args.length)
          .toList();

      // If there is more than one matching function, filter by argument types
      if (functionDefs.length > 1) {
        functionDefs = functionDefs.where((f) {
          var match = true;
          for (var i = 0; i < args.length && match; i++) {
            if (args[i] != null) {
              var operandTypeSpecifier = f.parameters[i].operandTypeSpecifier;
              if (operandTypeSpecifier == null &&
                  f.parameters[i].operandType != null) {
                // Convert it to a NamedTypeSpecifier
                operandTypeSpecifier = NamedTypeSpecifier(
                  name: f.parameters[i].operandType!,
                );
              }
              match = ctx.matchesTypeSpecifier(args[i], operandTypeSpecifier);
            }
          }
          return match;
        }).toList();
      }

      // If there is more than one matching function, calculate a score based on the quality of matches
      if (functionDefs.length > 1) {
        // TODO: Implement score calculation
      }

      if (functionDefs.isEmpty) {
        throw Exception('No function with a matching signature could be found');
      }

      // By this point, we should have only one function, but until implementation is completed,
      // use the last one (no matter how many still remain)
      final functionDef = functionDefs.last;
      for (var i = 0; i < functionDef.parameters.length; i++) {
        childCtx!.set(functionDef.parameters[i].name, args[i]);
      }
      return functionDef.expression.execute(childCtx!);
    } else {
      throw Exception('Function definitions not found');
    }
  }
}

class OperandDef extends ExpressionDef {
  String? name;
  String? operandType;
  TypeSpecifier? operandTypeSpecifier;

  OperandDef({this.name, this.operandType, this.operandTypeSpecifier})
      : super(name: name);

  OperandDef.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        operandType = json['operandType'],
        operandTypeSpecifier = json['operandTypeSpecifier'] != null
            ? build(json['operandTypeSpecifier'])
            : null,
        super.fromJson(json);
}

class OperandRef extends ExpressionRef {
  String? name;

  OperandRef({this.name});

  OperandRef.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    return ctx.get(name);
  }
}

class IdentifierRef extends ExpressionRef {
  String? name;
  String? library;

  IdentifierRef({this.name, this.library});

  IdentifierRef.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        library = json['libraryName'],
        super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    // TODO: Technically, the ELM Translator should never output one of these
    // but this code is needed since it does, as a work-around to get queries
    // to work properly when sorting by a field in a tuple
    final lib = library != null ? ctx.get(library!) : null;
    var val = lib != null ? lib.get(name) : ctx.get(name);
    if (val == null) {
      final parts = name!.split('.');
      val = ctx.get(parts[0]);
      if (val != null && parts.length > 1) {
        var currObj = val;
        for (final part in parts.sublist(1)) {
          var obj;
          if (currObj != null) {
            obj = currObj[part];
            if (obj == null && currObj.get is Function) {
              obj = currObj.get(part);
            }
          }
          currObj = obj is Function ? obj.call(currObj) : obj;
        }
        val = currObj;
      }
    }
    return val is Function ? val.call(ctx.contextValues) : val;
  }
}
