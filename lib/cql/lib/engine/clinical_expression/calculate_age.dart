import '../../cql.dart';

/// Calculates the age in the specified precision of a person born on the given
/// date.
///
/// The CalculateAge operator is defined for Date and DateTime.
///
/// For the Date overload, the calculation is performed using Today(), the
/// precision must be one of year, month, week, or day, and the result is the
/// number of whole calendar periods that have elapsed between the given date and
/// today.
///
/// For the DateTime overload, the calculation is performed using Now(), and the
/// result is the number of whole calendar periods that have elapsed between the
/// given datetime and now.
class CalculateAge extends UnaryExpression {
  final DateTimePrecision precision;

  CalculateAge({required this.precision, required super.operand});

  factory CalculateAge.fromJson(Map<String, dynamic> json) => CalculateAge(
        precision: DateTimePrecisionExtension.fromJson(json['precision']),
        operand: Expression.fromJson(json['operand']!),
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'precision': precision,
        'operand': operand.toJson(),
      };

  @override
  String toString() => toJson().toString();

  String get type => 'CalculateAge';
}
