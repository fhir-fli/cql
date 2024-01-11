import '../../cql.dart';

/// The Iteration expression returns the current iteration number of a scoped operation.
class Iteration extends Expression {
  final String scope;

  Iteration({
    required this.scope,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Iteration.fromJson(Map<String, dynamic> json) => Iteration(
        scope: json['scope']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'scope': scope,
      };

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'Iteration';
}
