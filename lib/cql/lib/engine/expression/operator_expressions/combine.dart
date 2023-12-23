import '../../../cql.dart';

/// Operator to combine a list of strings, optionally separating each string with the given separator.
/// If either argument is null, the result is null. If the source list is empty, the result is an empty string ('').
/// For consistency with aggregate operator behavior, null elements in the input list are ignored.
class Combine extends OperatorExpression {
  final Expression? separator;
  final Expression source;

  Combine(this.source, [this.separator]);

  factory Combine.fromJson(Map<String, dynamic> json) => Combine(
        json['source']!,
        json['separator'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'source': source,
        'separator': separator,
      };
}
