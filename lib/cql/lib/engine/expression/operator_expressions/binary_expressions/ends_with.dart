import '../../../../cql.dart';

/// Operator to return true if the given string ends with the given suffix.
/// If the suffix is the empty string, the result is true.
/// If either argument is null, the result is null.
class EndsWith extends BinaryExpression {
  EndsWith({required super.operand});

  factory EndsWith.fromJson(Map<String, dynamic> json) =>
      EndsWith(operand: json['operand']!);

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand,
      };
}
