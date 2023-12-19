import '../../../cql.dart';

/// Operator to return the nearest integer to its argument.
/// The semantics of round are defined as a traditional round, meaning that a decimal value of 0.5 or higher will round to 1.
/// If the argument is null, the result is null.
/// Precision determines the decimal place at which the rounding will occur. If precision is not specified or null, 0 is assumed.
class Round extends OperatorExpression {
  final Expression operand;
  final Expression? precision;

  Round(this.operand, {this.precision});

  factory Round.fromJson(Map<String, dynamic> json) => Round(
        Expression.fromJson(json['operand']),
        precision: json['precision'] != null
            ? Expression.fromJson(json['precision'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand.toJson(),
        'precision': precision?.toJson(),
      };
}
