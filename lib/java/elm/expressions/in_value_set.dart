import '../elm.dart';

class InValueSet extends Expression {
  List<Expression>? code;
  ValueSetRef valueSet;

  InValueSet(Map<String, dynamic> json)
      : code = build(json['code']),
        valueSet = ValueSetRef(json['valueset']),
        super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    if (code == null) {
      return [false];
    }
    final List<dynamic>? codeResult =
        code?.map((e) => e.execute(ctx)).expand((element) => element).toList();
    if (codeResult == null) {
      return [false];
    }
    final List<dynamic> valueSetResult = valueSet.execute(ctx);
    if (valueSetResult.length != 1 || valueSetResult.first is! CqlValueSet) {
      throw Exception('ValueSet must be provided to InValueSet function');
    }
    return [
      (valueSetResult.first as CqlValueSet).hasMatch(codeResult)
    ]; // Assuming hasMatch logic is implemented
  }
}
