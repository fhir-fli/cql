import '../../cql.dart';

/// The AnyInValueSet operator returns true if any of the given codes are in the
/// given value set.
///
/// The first argument is expected to be a list of String, Code, or Concept.
///
/// Note that this operator explicitly requires a ValueSetRef as its valueset
/// argument. This allows for both static analysis of the value set references
/// within an artifact, as well as the implementation of value set membership by
/// the target environment as a service call to a terminology server, if desired.
class AnyInValueSet extends OperatorExpression {
  late Expression codes;
  late ValueSetRef valueset;

  AnyInValueSet({required this.codes, required this.valueset});
}