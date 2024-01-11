import '../../../../cql.dart';

/// Operator to return true if the given string matches the given regular expression pattern.
/// If either argument is null, the result is null.
/// Platforms will typically use native regular expression implementations.
class Matches extends BinaryExpression {
  Matches({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Matches.fromJson(Map<String, dynamic> json) => Matches(
        operand: List<Expression>.from(
            json['operand'].map((x) => Expression.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand,
      };
}
