import '../../../../cql.dart';

/// Operator to compute the logarithm of its first argument, using the second argument as the base.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
class Log extends BinaryExpression {
  Log({required super.operands});

  factory Log.fromJson(Map<String, dynamic> json) => Log(
        operands: json['operands']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'operands': operands,
      };
}