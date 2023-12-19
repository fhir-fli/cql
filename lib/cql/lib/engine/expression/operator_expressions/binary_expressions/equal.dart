import '../../../../cql.dart';

/// Operator to check if the arguments are equal.
/// Returns true if the arguments are equal, false if they are known unequal, and null otherwise.
/// Equality semantics are defined to be value-based.
/// If either argument is null, the result is null.
class Equal extends BinaryExpression {
  Equal({required super.operands});

  factory Equal.fromJson(Map<String, dynamic> json) =>
      Equal(operands: json['operands']!);

  @override
  Map<String, dynamic> toJson() => {
        'operands': operands,
      };
}
