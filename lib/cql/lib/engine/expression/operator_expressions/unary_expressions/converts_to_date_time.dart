import '../../../../cql.dart';

/// Operator to check if the value of its argument can be converted to a DateTime value.
/// For String values, the operator expects the string to be formatted using the ISO-8601 datetime representation: YYYY-MM-DDThh:mm:ss.fff(+|-)hh:mm.
/// If the input string is not formatted correctly or does not represent a valid DateTime value, the result is false.
/// DateTime values may be specified to any precision. If no timezone offset is supplied, the timezone offset of the evaluation request timestamp is assumed.
/// If the argument is null, the result is null.
class ConvertsToDateTime extends UnaryExpression {
  ConvertsToDateTime({required super.operand});

  factory ConvertsToDateTime.fromJson(Map<String, dynamic> json) =>
      ConvertsToDateTime(operand: Expression.fromJson(json['operand']!));

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand,
      };
}
