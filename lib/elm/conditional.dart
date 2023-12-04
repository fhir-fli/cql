import '../cql.dart';

class If extends Expression {
  var condition;
  var th;
  var els;

  If(Map<String, dynamic> json) : super.fromJson(json) {
    condition = build(json['condition']);
    th = build(json['then']);
    els = build(json['else']);
  }

  @override
  Future<dynamic> exec(Context ctx) async {
    if (await condition.execute(ctx)) {
      return th.execute(ctx);
    } else {
      return els.execute(ctx);
    }
  }
}

class CaseItem {
  var when;
  var then;

  CaseItem(Map<String, dynamic> json) {
    when = build(json['when']);
    then = build(json['then']);
  }
}

class Case extends Expression {
  var comparand;
  List<CaseItem> caseItems = [];
  var els;

  Case(Map<String, dynamic> json) : super.fromJson(json) {
    comparand = build(json['comparand']);
    caseItems = List.from(json['caseItem'] ?? [])
        .map((ci) => CaseItem(Map<String, dynamic>.from(ci)))
        .toList();
    els = build(json['else']);
  }

  Future<dynamic> exec(Context ctx) async {
    if (comparand != null) {
      return execSelected(ctx);
    } else {
      return execStandard(ctx);
    }
  }

  Future<dynamic> execSelected(Context ctx) async {
    var val = await comparand.execute(ctx);
    for (var ci in caseItems) {
      if (equals(await ci.when.execute(ctx), val) ?? false) {
        return ci.then.execute(ctx);
      }
    }
    return els.execute(ctx);
  }

  Future<dynamic> execStandard(Context ctx) async {
    for (var ci in caseItems) {
      if (await ci.when.execute(ctx)) {
        return ci.then.execute(ctx);
      }
    }
    return els.execute(ctx);
  }
}
