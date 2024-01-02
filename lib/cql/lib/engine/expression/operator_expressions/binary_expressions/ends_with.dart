import '../../../../cql.dart';

/// Operator to return true if the given string ends with the given suffix.
/// If the suffix is the empty string, the result is true.
/// If either argument is null, the result is null.
class EndsWith extends BinaryExpression {
  EndsWith({required super.operand});

  factory EndsWith.fromJson(Map<String, dynamic> json) => EndsWith(
      operand: List<Expression>.from(
          json['operand'].map((x) => Expression.fromJson(x))));

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'operand': operand.map((x) => x.toJson()).toList(),
      };

  @override
  String get type => 'EndsWith';
}
