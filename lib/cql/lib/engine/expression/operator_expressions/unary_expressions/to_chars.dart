import '../../../../cql.dart';

/// Operator to take a string and returns a list with one string for each character in the input.
/// If the argument is null, the result is null.
class ToChars extends UnaryExpression {
  ToChars({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ToChars.fromJson(Map<String, dynamic> json) => ToChars(
        operand: Expression.fromJson(json['operand']!),
      );

  @override
  String get type => 'ToChars';

  @override
  String toString() => 'ToChars(${operand.toString()})';
}
