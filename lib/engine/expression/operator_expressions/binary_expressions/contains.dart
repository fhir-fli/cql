import '../../../../cql.dart';

/// Operator to check if the first operand contains the second operand.
/// Returns true if the given point is greater than or equal to the starting point of the interval and less than or equal to the ending point of the interval.
/// For open interval boundaries, exclusive comparison operators are used. For closed interval boundaries, if the interval boundary is null, the result of the boundary comparison is considered true.
/// If precision is specified and the point type is Date, DateTime, or Time, comparisons used in the operation are performed at the specified precision.
/// If the first argument is null, the result is false. If the second argument is null, the result is null.
class Contains extends BinaryExpression {
  final DateTimePrecision? precision;

  Contains({
    this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Contains.fromJson(Map<String, dynamic> json) => Contains(
        precision: json['precision'] == null
            ? null
            : DateTimePrecisionExtension.fromJson(json['precision']),
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
    final Map<String, dynamic> json = {
      'type': type,
      if (precision != null) 'precision': precision!.toJson(),
      'operand': operand.map((x) => x.toJson()).toList(),
    };
    if (annotation != null) {
      json['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (localId != null) {
      json['localId'] = localId;
    }
    if (locator != null) {
      json['locator'] = locator;
    }
    if (resultTypeName != null) {
      json['resultTypeName'] = resultTypeName;
    }
    if (resultTypeSpecifier != null) {
      json['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return json;
  }

  @override
  String get type => 'Contains';
}
