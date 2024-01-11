import '../../../../cql.dart';

/// Operator to extract the single point from the source interval.
/// The source interval must be a unit interval (an interval with the same starting and ending boundary), otherwise, a run-time error is thrown.
/// If the source interval is null, the result is null.
class PointFrom extends UnaryExpression {
  PointFrom({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory PointFrom.fromJson(Map<String, dynamic> json) => PointFrom(
        operand: Expression.fromJson(json['operand']),
      );

  @override
  String get type => 'PointFrom';
}
