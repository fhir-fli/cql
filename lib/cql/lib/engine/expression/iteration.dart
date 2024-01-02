import '../../cql.dart';

/// The Iteration expression returns the current iteration number of a scoped operation.
class Iteration extends Expression {
  final String scope;

  Iteration({required this.scope});

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
