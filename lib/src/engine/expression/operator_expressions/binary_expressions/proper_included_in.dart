import 'package:cql/src/internal.dart';

/// Operator to check if the first operand is included in the second and is
/// strictly smaller.
/// Returns true if every element of the first interval is included in the
/// second interval,
/// using equality semantics, and the first interval is strictly smaller.
/// If precision is specified and the point type is Date, DateTime, or Time,
/// comparisons used in the operation are performed at the specified precision.
/// If either argument is null, the result is null.
class ProperIncludedIn extends BinaryExpression {
  ProperIncludedIn({
    required super.operand,
    this.precision,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ProperIncludedIn.fromJson(Map<String, dynamic> json) =>
      ProperIncludedIn(
        precision: json['precision'] != null
            ? CqlDateTimePrecisionExtension.fromJson(
                json['precision'] as String?,
              )
            : null,
        operand: List<CqlExpression>.from(
          (json['operand'] as List<dynamic>).map(
            (dynamic x) => CqlExpression.fromJson(x as Map<String, dynamic>),
          ),
        ),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
                .toList()
            : null,
        localId: json['localId'] as String?,
        locator: json['locator'] as String?,
        resultTypeName: json['resultTypeName'] as String?,
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(
                json['resultTypeSpecifier'] as Map<String, dynamic>,
              )
            : null,
      );
  final CqlDateTimePrecision? precision;

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
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
  String toString() => toJson().toString();

  @override
  String get type => 'ProperIncludedIn';

  @override
  Future<CqlBoolean?> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('ProperIncludedIn expression must have 2 operands');
    }
    final left = await operand[0].execute(context);
    var right = await operand[1].execute(context);
    // Handle Interval[null, null] with closed bounds — unbounded interval
    if (right == null && operand[1] is IntervalExpression) {
      final ie = operand[1] as IntervalExpression;
      if (ie.lowClosed && ie.highClosed) {
        right = CqlInterval<dynamic>(
          lowClosed: true,
          highClosed: true,
        );
      }
    }
    // ProperIncludedIn(a, b) = ProperIncludes(b, a)
    return ProperIncludes.properIncludes(right, left, precision);
  }
}
