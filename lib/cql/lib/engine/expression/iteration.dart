import '../../cql.dart';

/// The Iteration expression returns the current iteration number of a scoped operation.
class Iteration extends Expression {
  Iteration({required this.scope});

  final String scope;

  factory Iteration.fromJson(Map<String, dynamic> json) => Iteration(
        scope: json['scope']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'scope': scope,
      };
}
