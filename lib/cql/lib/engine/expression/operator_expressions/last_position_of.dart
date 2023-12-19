import '../../../cql.dart';

/// Operator to return the 0-based index of the beginning of the last appearance of the given pattern in the given string.
/// If the pattern is not found, the result is -1.
/// If either argument is null, the result is null.
class LastPositionOf extends OperatorExpression {
  final Expression pattern;
  final Expression string;

  LastPositionOf(this.pattern, this.string);

  factory LastPositionOf.fromJson(Map<String, dynamic> json) => LastPositionOf(
        json['pattern']!,
        json['string']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'pattern': pattern.toJson(),
        'string': string.toJson(),
      };
}
