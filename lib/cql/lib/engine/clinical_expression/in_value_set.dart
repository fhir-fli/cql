import '../../cql.dart';

/// The InValueSet operator returns true if the given code is in the given value
/// set.
///
/// The first argument is expected to be a String, Code, or Concept.
///
/// Note that this operator explicitly requires a ValueSetRef as its valueset
/// argument. This allows for both static analysis of the value set references
/// within an artifact, as well as the implementation of value set membership by
/// the target environment as a service call to a terminology server, if desired.
class InValueSet extends OperatorExpression {
  final Expression code;
  final ValueSetRef? valueset;
  final Expression? valuesetExpression;

  InValueSet({required this.code, this.valueset, this.valuesetExpression});

  factory InValueSet.fromJson(Map<String, dynamic> json) {
    return InValueSet(
      code: Expression.fromJson(json['code']!),
      valueset: json['valueset'] == null
          ? null
          : ValueSetRef.fromJson(json['valueset']!),
      valuesetExpression: json['valuesetExpression'] == null
          ? null
          : Expression.fromJson(json['valuesetExpression']!),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'code': code.toJson(),
        if (valueset != null) 'valueset': valueset!.toJson(),
        if (valuesetExpression != null)
          'valuesetExpression': valuesetExpression!.toJson(),
      };

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'InValueSet';
}
