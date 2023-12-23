import '../../../../cql.dart';

/// Operator to construct a date value from the given components.
/// At least one component must be specified, and no component may be specified at a precision below an unspecified precision.
/// For example, month may be null, but if it is, day must be null as well.
class ExpDate extends OperatorExpression {
  final Expression? day;
  final Expression? month;
  final Expression year;

  ExpDate(this.year, [this.month, this.day]);

  factory ExpDate.fromJson(Map<String, dynamic> json) => ExpDate(
        json['year'],
        json['month'],
        json['day'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'year': year,
        'month': month,
        'day': day,
      };
}
