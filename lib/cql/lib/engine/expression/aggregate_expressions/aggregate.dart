import '../../../cql.dart';

/// The Aggregate operator performs custom aggregation by evaluating an expression for each element of the source.
/// If a path is specified, the aggregation is performed for the value of the property specified by the path for each element of the source.
/// If the list is null, the result is null.
class Aggregate extends AggregateExpression {
  Aggregate({
    required this.iteration,
    required Expression source,
    required this.initialValue,
    List<TypeSpecifier>? signature,
    String? path,
  }) : super(
          signature: signature,
          source: source,
          path: path,
        );

  final Expression iteration;
  final Expression? initialValue;

  factory Aggregate.fromJson(Map<String, dynamic> json) => Aggregate(
        iteration: json['iteration']!,
        source: json['source']!,
        initialValue: json['initialValue'],
        signature: json['signature'],
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
