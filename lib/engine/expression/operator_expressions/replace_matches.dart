import '../../../cql.dart';

/// Operator to match the given string using the regular expression pattern, replacing each match with the given substitution.
/// The substitution string may refer to identified match groups in the regular expression.
/// If any argument is null, the result is null.
/// Platforms will typically use native regular expression implementations.
class ReplaceMatches extends TernaryExpression {
  ReplaceMatches({
    required super.operands,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ReplaceMatches.fromJson(Map<String, dynamic> json) => ReplaceMatches(
        operands: json['operands'] != null
            ? (json['operands'] as List)
                .map((e) => Expression.fromJson(e))
                .toList()
            : [],
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
      'operands': operands.map((e) => e.toJson()).toList(),
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
  String get type => 'ReplaceMatches';
}
