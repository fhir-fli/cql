import '../../../cql.dart';

/// For structured types, the Descendents operator returns a list of all the values of the elements of the type, recursively.
/// For list types, the result is the same as invoking Descendents on each element in the list and flattening the resulting lists into a single result.
class Descendents extends OperatorExpression {
  final Expression source;

  Descendents({required this.source});

  factory Descendents.fromJson(Map<String, dynamic> json) => Descendents(
        source: Expression.fromJson(json['source']!),
      );

  @override
  Map<String, dynamic> toJson() => {
        'source': source,
      };
}
