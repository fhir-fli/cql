import '../../../../cql.dart';

/// Operator to compare two Date, DateTime, or Time values to the specified precision to determine if the first argument is the same or after the second argument.
/// If no precision is specified, the comparison is performed beginning with years (or hours for time values) and proceeding to the finest precision specified in either input.
/// For Date values, precision must be one of year, month, or day.
/// For DateTime values, precision must be one of year, month, day, hour, minute, second, or millisecond.
/// For Time values, precision must be one of hour, minute, second, or millisecond.
class SameOrAfter extends BinaryExpression {
  final DateTimePrecision? precision;

  SameOrAfter({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory SameOrAfter.fromJson(Map<String, dynamic> json) => SameOrAfter(
        precision: json['precision'] != null
            ? DateTimePrecisionExtension.fromJson(json['precision'])
            : null,
        operand: List<Expression>.from(
          json['operand'].map(
            (x) => Expression.fromJson(x),
          ),
        ),
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
        if (precision != null) 'precision': precision!.toJson(),
        'type': type,
        'operand': operand.map((e) => e.toJson()).toList(),
      };

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'SameOrAfter';
}
