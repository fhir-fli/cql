import '../../../../cql.dart';

/// Operator to return the length of its argument.
/// For strings, the length is the number of characters in the string.
/// For lists, the length is the number of elements in the list.
/// If the argument is null, the result is 0.
class Length extends UnaryExpression {
  Length({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Length.fromJson(Map<String, dynamic> json) => Length(
        operand: Expression.fromJson(json['operand']!),
      );

  @override
  String get type => 'Length';
}
