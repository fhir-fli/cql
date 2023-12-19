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
  final ValueSetRef valueset;

  InValueSet({required this.code, required this.valueset});

  factory InValueSet.fromJson(Map<String, dynamic> json) => InValueSet(
        code: json['code']!,
        valueset: json['valueset']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'code': code.toJson(),
        'valueset': valueset.toJson(),
      };
}
