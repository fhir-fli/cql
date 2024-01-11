import '../../../../cql.dart';

/// IsNull operator determining whether its argument evaluates to null.
class IsNull extends UnaryExpression {
  IsNull({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory IsNull.fromJson(Map<String, dynamic> json) => IsNull(
        operand: Expression.fromJson(json['operand']!),
      );

  @override
  String get type => 'IsNull';
}
