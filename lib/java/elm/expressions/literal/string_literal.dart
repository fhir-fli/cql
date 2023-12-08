import '../../elm.dart';

class StringLiteral extends Literal {
  StringLiteral.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  bool get isStringLiteral {
    return true;
  }

  @override
  List<dynamic> execute(Context ctx) {
    // TODO: Remove these replacements when CQL-to-ELM fixes bug: https://github.com/cqframework/clinical_quality_language/issues/82
    return this.value.replaceAll(r"\'", "'").replaceAll(r'\"', '"');
  }
}
