import '../../../../cql.dart';

/// Exists operator returns true if the list contains any elements.
/// If the argument is null, the result is false.
class Exists extends UnaryExpression {
  Exists({required super.operand});

  factory Exists.fromJson(Map<String, dynamic> json) =>
      Exists(operand: json['operand']!);

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand,
      };
}
