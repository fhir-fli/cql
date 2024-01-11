import '../../../../cql.dart';

/// Operator to return the first integer less than or equal to the argument.
/// If the argument is null, the result is null.
class Floor extends UnaryExpression {
  Floor({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Floor.fromJson(Map<String, dynamic> json) => Floor(
        operand: Expression.fromJson(json['operand']!),
      );

  @override
  String get type => 'Floor';
}
