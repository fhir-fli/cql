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
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'pattern': pattern.toJson(),
      'string': string.toJson(),
    };

    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }

    if (localId != null) {
      data['localId'] = localId;
    }

    if (locator != null) {
      data['locator'] = locator;
    }

    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    return data;
  }

  @override
  String get type => 'PositionOf';
}
