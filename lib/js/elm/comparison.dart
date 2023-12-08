import '../cql.dart';

class Less extends Expression {
  Less(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    final List<Uncertainty> args =
        execArgs(ctx).map((x) => Uncertainty.from(x)).toList();
    if (args.length != 2) {
      return [];
    }
    final result = args[0].lessThan(args[1]);
    return result == null ? [] : [result];
  }
}

class LessOrEqual extends Expression {
  LessOrEqual(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    final List<Uncertainty> args =
        execArgs(ctx).map((x) => Uncertainty.from(x)).toList();
    if (args.length != 2) {
      return [];
    }
    final result = args[0].lessThanOrEquals(args[1]);
    return result == null ? [] : [result];
  }
}

class Greater extends Expression {
  Greater(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    final List<Uncertainty> args =
        execArgs(ctx).map((x) => Uncertainty.from(x)).toList();
    if (args.length != 2) {
      return [];
    }
    final result = args[0].greaterThan(args[1]);
    return result == null ? [] : [result];
  }
}

class GreaterOrEqual extends Expression {
  GreaterOrEqual(Map<String, dynamic> json) : super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    final List<Uncertainty> args =
        execArgs(ctx).map((x) => Uncertainty.from(x)).toList();
    if (args.length != 2) {
      return [];
    }
    final result = args[0].greaterThanOrEquals(args[1]);
    return result == null ? [] : [result];
  }
}
