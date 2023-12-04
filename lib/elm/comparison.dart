import '../cql.dart';

class Less extends Expression {
  Less(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final args = (await this.execArgs(ctx)).map((x) => Uncertainty.from(x));
    if (args[0] == null || args[1] == null) {
      return null;
    }
    return args[0].lessThan(args[1]);
  }
}

class LessOrEqual extends Expression {
  LessOrEqual(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final args = (await this.execArgs(ctx)).map((x) => Uncertainty.from(x));
    if (args[0] == null || args[1] == null) {
      return null;
    }
    return args[0].lessThanOrEquals(args[1]);
  }
}

class Greater extends Expression {
  Greater(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final args = (await this.execArgs(ctx)).map((x) => Uncertainty.from(x));
    if (args[0] == null || args[1] == null) {
      return null;
    }
    return args[0].greaterThan(args[1]);
  }
}

class GreaterOrEqual extends Expression {
  GreaterOrEqual(Map<String, dynamic> json) : super.fromJson(json);

  @override
  Future<dynamic> exec(Context ctx) async {
    final args = (await this.execArgs(ctx)).map((x) => Uncertainty.from(x));
    if (args[0] == null || args[1] == null) {
      return null;
    }
    return args[0].greaterThanOrEquals(args[1]);
  }
}
