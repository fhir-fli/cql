import '../../../../cql.dart';

/// Operator to convert a value of type Code to a Concept value with the given Code.
/// If the Code has a display value, the resulting Concept will have the same display value.
/// If the argument is null, the result is null.
class ToConcept extends UnaryExpression {
  ToConcept({required super.operand});

  factory ToConcept.fromJson(Map<String, dynamic> json) => ToConcept(
        operand: Expression.fromJson(json['operand']),
      );

  @override
  String get type => 'ToConcept';
}
