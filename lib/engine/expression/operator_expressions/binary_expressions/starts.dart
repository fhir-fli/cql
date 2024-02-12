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
        operand: List<CqlExpression>.from(
          json['operand'].map(
            (x) => CqlExpression.fromJson(x),
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
            ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    data['precision'] = precision?.toJson();
    data['operand'] = isList
        ? operand.map((e) => e.toJson()).toList()
        : operand.first.toJson();
    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (localId != null) {
      data['localId'] = localId;
    }
    if (locator != null) {
      data['locator'] = locator;
    }
    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }
    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return data;
  }

  @override
  String get type => 'Starts';
}
