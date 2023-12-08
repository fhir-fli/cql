import '../elm.dart';

class ValueSetRef extends Expression {
  String name;
  String libraryName;

  ValueSetRef(Map<String, dynamic> json)
      : name = json['name'],
        libraryName = json['libraryName'],
        super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    var valueSet = ctx.getValueSet(name, libraryName);
    if (valueSet is Expression) {
      valueSet = valueSet.execute(ctx);
    }
    return valueSet;
  }
}
