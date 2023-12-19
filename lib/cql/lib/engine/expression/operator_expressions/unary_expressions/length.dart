import '../../../../cql.dart';

/// Operator to return the length of its argument.
/// For strings, the length is the number of characters in the string.
/// For lists, the length is the number of elements in the list.
/// If the argument is null, the result is 0.
class Length extends UnaryExpression {
  Length({required super.operand});

  factory Length.fromJson(Map<String, dynamic> json) => Length(
        operand: json['operand']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand.toJson(),
      };
}
