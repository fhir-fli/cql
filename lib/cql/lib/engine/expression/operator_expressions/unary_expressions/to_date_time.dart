import '../../../../cql.dart';

/// Operator to convert the value of its argument to a DateTime value.
/// For String values, the operator expects the string to be formatted using the ISO-8601 datetime representation: YYYY-MM-DDThh:mm:ss.fff(+|-)hh:mm.
/// If the input string is not formatted correctly or does not represent a valid DateTime value, the result is null.
/// DateTime values may be specified to any precision. If no timezone offset is supplied, the timezone offset of the evaluation request timestamp is assumed.
/// If the argument is null, the result is null.
/// For Date values, the result is a DateTime with the time components unspecified, except the timezone offset, which is set to the timezone offset of the evaluation request timestamp.
class ToDateTime extends UnaryExpression {
  ToDateTime({required super.operand});

  factory ToDateTime.fromJson(Map<String, dynamic> json) => ToDateTime(
        operand: Expression.fromJson(json['operand']),
      );

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand.toJson(),
      };
}
