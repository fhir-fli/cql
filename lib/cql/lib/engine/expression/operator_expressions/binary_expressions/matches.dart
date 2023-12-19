import '../../../../cql.dart';

/// Operator to return true if the given string matches the given regular expression pattern.
/// If either argument is null, the result is null.
/// Platforms will typically use native regular expression implementations.
class Matches extends BinaryExpression {
  Matches({required super.operands});

  factory Matches.fromJson(Map<String, dynamic> json) => Matches(
        operands: json['operands']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'operands': operands,
      };
}
