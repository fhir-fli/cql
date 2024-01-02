import '../../../../cql.dart';

/// Operator to construct a date value from the given components.
/// At least one component must be specified, and no component may be specified at a precision below an unspecified precision.
/// For example, month may be null, but if it is, day must be null as well.
class DateExpression extends OperatorExpression {
  final Expression? day;
  final Expression? month;
  final Expression year;

  DateExpression({required this.year, this.month, this.day});

  factory DateExpression.fromJson(Map<String, dynamic> json) => DateExpression(
        year: Expression.fromJson(json['year']),
        month:
            json['month'] == null ? null : Expression.fromJson(json['month']),
        day: json['day'] == null ? null : Expression.fromJson(json['day']),
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'year': year.toJson(),
        if (month != null) 'month': month!.toJson(),
        if (month != null && day != null) 'day': day!.toJson(),
      };

  @override
  String get type => 'Date';
}
