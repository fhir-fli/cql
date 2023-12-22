import '../../../../cql.dart';

/// Operator to return true if the given string starts with the given prefix.
/// If the prefix is the empty string, the result is true.
/// If either argument is null, the result is null.
class StartsWith extends BinaryExpression {
  StartsWith({required super.operand});

  factory StartsWith.fromJson(Map<String, dynamic> json) => StartsWith(
        operand: (json['operand'] as List)
            .map((e) => Expression.fromJson(e))
            .toList(),
      );

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand.map((e) => e.toJson()).toList(),
      };
}
