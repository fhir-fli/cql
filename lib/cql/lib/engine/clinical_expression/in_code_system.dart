import '../../cql.dart';

/// The InCodeSystem operator returns true if the given code is in the given
/// code system.
///
/// The first argument is expected to be a String, Code, or Concept.
///
/// Note that this operator explicitly requires a CodeSystemRef as its codesystem
/// argument. This allows for both static analysis of the code system references
/// within an artifact, as well as the implementation of code system membership
/// by the target environment as a service call to a terminology server, if
/// desired.
class InCodeSystem extends OperatorExpression {
  final Expression code;
  final CodeSystemRef codesystem;

  InCodeSystem({
    required this.code,
    required this.codesystem,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory InCodeSystem.fromJson(Map<String, dynamic> json) => InCodeSystem(
        code: Expression.fromJson(json['code']!),
        codesystem: CodeSystemRef.fromJson(json['codesystem']!),
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'code': code.toJson(),
        'codesystem': codesystem.toJson(),
      };

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'InCodeSystem';
}
