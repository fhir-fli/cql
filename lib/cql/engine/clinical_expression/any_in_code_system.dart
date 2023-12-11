import '../../cql.dart';

/// The AnyInCodeSystem operator returns true if any of the given codes are in
/// the given code system.
///
/// The first argument is expected to be a list of String, Code, or Concept.
///
/// Note that this operator explicitly requires a CodeSystemRef as its codesystem
/// argument. This allows for both static analysis of the code system references
/// within an artifact, as well as the implementation of code system membership
/// by the target environment as a service call to a terminology server, if
/// desired.
class AnyInCodeSystem extends OperatorExpression {
  late Expression codes;
  late CodeSystemRef codesystem;

  AnyInCodeSystem({required this.codes, required this.codesystem});
}
