import '../../../cql.dart';

/// Operator to return the 0-based index of the beginning of the given pattern in the given string.
/// If the pattern is not found, the result is -1.
/// If either argument is null, the result is null.
class PositionOf extends OperatorExpression {
  final Expression pattern;
  final Expression string;

  PositionOf({
    required this.pattern,
    required this.string,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory PositionOf.fromJson(Map<String, dynamic> json) => PositionOf(
        pattern: Expression.fromJson(json['pattern']),
        string: Expression.fromJson(json['string']),
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'pattern': pattern.toJson(),
        'string': string.toJson(),
      };

  @override
  String get type => 'PositionOf';
}
