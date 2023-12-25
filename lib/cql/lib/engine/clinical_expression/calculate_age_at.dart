import '../../cql.dart';

/// Calculates the age in the specified precision of a person born on a given
/// date, as of another given date.
///
/// The CalculateAgeAt operator has two signatures:
/// (Date, Date)
/// (DateTime, DateTime)
///
/// For the Date overload, precision must be one of year, month, week, or day,
/// and the result is the number of whole calendar periods that have elapsed
/// between the first date and the second date.
///
/// For the DateTime overload, the result is the number of whole calendar periods
/// that have elapsed between the first datetime and the second datetime.
class CalculateAgeAt extends BinaryExpression {
  final DateTimePrecision precision;

  CalculateAgeAt({required this.precision, required super.operand});

  factory CalculateAgeAt.fromJson(Map<String, dynamic> json) => CalculateAgeAt(
      precision: DateTimePrecisionExtension.fromJson(json['precision']),
      operand: List<Expression>.from(
          json['operand'].map((x) => Expression.fromJson(x))));

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'precision': precision,
        'operand': operand,
      };

  @override
  String toString() => toJson().toString();

  String get type => 'CalculateAgeAt';
}
