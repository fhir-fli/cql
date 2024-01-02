import '../../../../cql.dart';

/// Operator to return the specified component of the argument.
/// If the argument is null, the result is null.
/// The precision must be one of Year, Month, Day, Hour, Minute, Second, or Millisecond.
class DateTimeComponentFrom extends UnaryExpression {
  final DateTimePrecision precision;

  DateTimeComponentFrom({required this.precision, required super.operand});

  factory DateTimeComponentFrom.fromJson(Map<String, dynamic> json) =>
      DateTimeComponentFrom(
          precision: json['precision'],
          operand: Expression.fromJson(json['operand']!));

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'precision': precision.toJson(),
        'operand': operand.toJson(),
      };

  String get type => 'DateTimeComponentFrom';
}
