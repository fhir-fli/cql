import '../../../cql.dart';

/// Operator to return the 0-based index of the beginning of the last appearance of the given pattern in the given string.
/// If the pattern is not found, the result is -1.
/// If either argument is null, the result is null.
class LastPositionOf extends OperatorExpression {
  final Expression pattern;
  final Expression string;

  LastPositionOf({
    required this.pattern,
    required this.string,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory LastPositionOf.fromJson(Map<String, dynamic> json) => LastPositionOf(
        pattern: Expression.fromJson(json['pattern']!),
        string: Expression.fromJson(json['string']!),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'],
        locator: json['locator'],
        resultTypeName: json['resultTypeName'],
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifier.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'pattern': pattern.toJson(),
        'string': string.toJson(),
      };

  @override
  String get type => 'LastPositionOf';
}
