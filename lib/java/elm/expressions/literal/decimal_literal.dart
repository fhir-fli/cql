import '../../elm.dart';

class DecimalLiteral extends Literal {
  DecimalLiteral.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    this.value = double.parse(this.value);
  }

  bool get isDecimalLiteral {
    return true;
  }

  @override
  List<dynamic> execute(Context ctx) {
    return this.value;
  }
}
