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

  CalculateAge({
    required this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory CalculateAge.fromJson(Map<String, dynamic> json) => CalculateAge(
        precision: DateTimePrecisionExtension.fromJson(json['precision']),
        operand: Expression.fromJson(json['operand']!),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'],
        locator: json['locator'],
        resultTypeName: json['resultTypeName'],
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifier.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'precision': precision.toJson(),
        'operand': operand.toJson(),
      };

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'CalculateAge';
}
