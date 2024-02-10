import '../../../cql.dart';

/// Operator to combine a list of strings, optionally separating each string with the given separator.
/// If either argument is null, the result is null. If the source list is empty, the result is an empty string ('').
/// For consistency with aggregate operator behavior, null elements in the input list are ignored.
class Combine extends OperatorExpression {
  final Expression? separator;
  final Expression source;

  Combine({
    required this.source,
    this.separator,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Combine.fromJson(Map<String, dynamic> json) => Combine(
        source: Expression.fromJson(json['source']!),
        separator: json['separator'] == null
            ? null
            : Expression.fromJson(json['separator']),
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
      'source': source.toJson(),
    };

    if (separator != null) {
      data['separator'] = separator!.toJson();
    }
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
  String get type => 'Combine';
}
