import '../../../cql/cql-to-elm/elm/elm.dart';

class CalculateAge extends Expression {
  late String precision;

  CalculateAge(Map<String, dynamic> json) : super.fromJson(json) {
    precision = json['precision'];
  }

  @override
  List<dynamic> execute(Context ctx) {
    final birthDate = execArgs(ctx);
    final asOf = (precision.toLowerCase() == 'year' ||
            precision.toLowerCase() == 'month')
        ? [ctx.getExecutionDateTime()?.getDate()]
        : [ctx.getExecutionDateTime()];

    return calculateAge(precision, birthDate, asOf);
  }
}
