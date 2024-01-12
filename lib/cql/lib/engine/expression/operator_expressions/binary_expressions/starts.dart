import '../../../../cql.dart';

/// Operator to determine if the first interval starts the second interval.
/// Returns true if Start(i1) = Start(i2) and End(i1) <= End(i2).
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class Starts extends BinaryExpression {
  final DateTimePrecision? precision;

  Starts({
    this.precision,
    required super.operand,
    super.isList = false,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Starts.fromJson(Map<String, dynamic> json) => Starts(
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
        'precision': precision,
        'type': type,
        'operand': isList
            ? operand.map((e) => e.toJson()).toList()
            : operand.first.toJson(),
      };

  @override
  String get type => 'Starts';
}
