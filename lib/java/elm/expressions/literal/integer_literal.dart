import '../../elm.dart';

class IntegerLiteral extends Literal {
  IntegerLiteral.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    this.value = int.parse(this.value, radix: 10);
  }

  bool get isIntegerLiteral {
    return true;
  }

  @override
  List<dynamic> execute(Context ctx) {
    return this.value;
  }
}
