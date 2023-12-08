import '../elm.dart';

class Concept extends Expression {
  late dynamic codes;
  String? display;

  Concept(Map<String, dynamic> json) : super.fromJson(json) {
    codes = json['code'];
    display = json['display'];
  }

  bool get isConcept => true;

  CqlCode toCode(Context ctx, dynamic code) {
    final system = ctx.getCodeSystem(code['system']['name']) ?? {};
    return CqlCode(
        code['code'], system['id'], code['version'], code['display']);
  }

  @override
  List<CqlConcept> execute(Context ctx) {
    final List<CqlCode> codeList = [];
    for (final code in codes) {
      codeList.add(toCode(ctx, code));
    }
    return [CqlConcept(codeList, display)];
  }
}
