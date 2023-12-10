import '../../../cql/cql-to-elm/elm/elm.dart';

class AnyInValueSet extends Expression {
  List<Expression> codes;
  ValueSetRef valueSet;

  AnyInValueSet(Map<String, dynamic> json)
      : codes = build(json['codes']),
        valueSet = ValueSetRef(json['valueset']),
        super.fromJson(json);

  @override
  List<dynamic> execute(Context ctx) {
    final List<dynamic> newValueSet = valueSet.execute(ctx);
    if (newValueSet.length != 1 || newValueSet.first is! CqlValueSet) {
      throw Exception('ValueSet must be provided to InValueSet function');
    }
    final newCodes =
        codes.map((e) => e.execute(ctx)).expand((element) => element).toList();
    return [
      newCodes.any((code) => (newValueSet.first as CqlValueSet).hasMatch(code))
    ];
  }
}
