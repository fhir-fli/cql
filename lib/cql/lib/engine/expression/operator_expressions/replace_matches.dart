import '../../../cql.dart';

/// Operator to match the given string using the regular expression pattern, replacing each match with the given substitution.
/// The substitution string may refer to identified match groups in the regular expression.
/// If any argument is null, the result is null.
/// Platforms will typically use native regular expression implementations.
class ReplaceMatches extends TernaryExpression {
  ReplaceMatches({required super.operands});

  factory ReplaceMatches.fromJson(Map<String, dynamic> json) => ReplaceMatches(
        operands: json['operands'] != null
            ? (json['operands'] as List)
                .map((e) => Expression.fromJson(e))
                .toList()
            : [],
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'operands': operands.map((e) => e.toJson()).toList(),
      };

  @override
  String get type => 'ReplaceMatches';
}
