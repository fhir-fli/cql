import '../../../../cql.dart';

/// Operator to check if the arguments are the same value or both null.
/// Returns true if the arguments are the same value or both null, and false otherwise.
/// Equivalence is the same as equality except for null behavior and specific type semantics.
/// If either argument is null, the result is null.
class Equivalent extends BinaryExpression {
  Equivalent({required super.operands});

  factory Equivalent.fromJson(Map<String, dynamic> json) =>
      Equivalent(operands: json['operands']!);

  @override
  Map<String, dynamic> toJson() => {
        'operands': operands,
      };
}
