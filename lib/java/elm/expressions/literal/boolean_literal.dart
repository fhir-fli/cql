import '../../elm.dart';

class BooleanLiteral extends Literal {
  BooleanLiteral.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    this.value = this.value == 'true';
  }

  bool get isBooleanLiteral {
    return true;
  }

  @override
  List<dynamic> execute(Context ctx) {
    return this.value;
  }
}
