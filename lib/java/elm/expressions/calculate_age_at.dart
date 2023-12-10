import '../../../cql/cql-to-elm/elm/elm.dart';

class CalculateAgeAt extends Expression {
  late String precision;

  CalculateAgeAt(Map<String, dynamic> json) : super.fromJson(json) {
    precision = json['precision'];
  }

  @override
  List<dynamic> execute(Context ctx) {
    final List<dynamic> values = execArgs(ctx);
    final birthDate = values[0];
    final asOf = values[1];
    final timeZoneOffset = ctx.getExecutionDateTime()?.timeZoneOffset;
    return calculateAge(precision, birthDate, asOf, timeZoneOffset);
  }
}

dynamic calculateAge(String precision, dynamic birthDate, dynamic asOf,
    [int? timeZoneOffset]) {
  if (birthDate != null && asOf != null) {
    if (asOf.isDate && birthDate.isDateTime) {
      birthDate = (birthDate as CqlDateTime).getDate();
    } else if (asOf.isDateTime && birthDate.isDate) {
      birthDate = birthDate.getDateTime(timeZoneOffset);
    }
    final result = birthDate.durationBetween(asOf, precision.toLowerCase());
    return result?.isPoint() ? result.low : result;
  }
  return null;
}
