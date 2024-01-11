import '../../../../cql.dart';

/// Exists operator returns true if the list contains any elements.
/// If the argument is null, the result is false.
class Exists extends UnaryExpression {
  Exists({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Exists.fromJson(Map<String, dynamic> json) =>
      Exists(operand: Expression.fromJson(json['operand']!));

  @override
  String get type => 'Exists';
}
