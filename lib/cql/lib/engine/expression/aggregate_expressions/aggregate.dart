import '../../../cql.dart';

/// The Aggregate operator performs custom aggregation by evaluating an expression for each element of the source.
/// If a path is specified, the aggregation is performed for the value of the property specified by the path for each element of the source.
/// If the list is null, the result is null.
class Aggregate extends AggregateExpression {
  final Expression? initialValue;
  final Expression iteration;

  Aggregate({
    required this.iteration,
    required super.source,
    required this.initialValue,
    super.signature,
    super.path,
  });

  factory Aggregate.fromJson(Map<String, dynamic> json) => Aggregate(
        iteration: Expression.fromJson(json['iteration']!),
        source: Expression.fromJson(json['source']!),
        initialValue: Expression.fromJson(json['initialValue']),
        signature: json['signature'] == null
            ? null
            : (json['signature'] as List)
                .map((e) => TypeSpecifier.fromJson(e))
                .toList(),
        path: json['path'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'iteration': iteration,
        'source': source,
        'initialValue': initialValue,
        'signature': signature,
        'path': path,
      };
}
