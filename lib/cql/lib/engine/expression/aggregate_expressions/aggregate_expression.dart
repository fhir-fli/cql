import '../../../cql.dart';

/// Abstract base class for Aggregate expressions performing operations on lists of data.
abstract class AggregateExpression extends Expression {
  AggregateExpression({
    required this.signature,
    required this.source,
    required this.path,
  });

  final List<TypeSpecifier>? signature;
  final Expression source;
  final String? path;

  factory AggregateExpression.fromJson(Map<String, dynamic> json) =>
      AggregateExpression(
        signature: json['signature'],
        source: json['source']!,
        path: json['path'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'signature': signature,
        'source': source,
        'path': path,
      };
}
