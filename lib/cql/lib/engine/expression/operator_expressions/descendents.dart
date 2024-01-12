import '../../../cql.dart';

/// For structured types, the Descendents operator returns a list of all the values of the elements of the type, recursively.
/// For list types, the result is the same as invoking Descendents on each element in the list and flattening the resulting lists into a single result.
class Descendents extends OperatorExpression {
  final Expression source;

  Descendents({
    required this.source,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Descendents.fromJson(Map<String, dynamic> json) => Descendents(
        source: Expression.fromJson(json['source']!),
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
        'source': source.toJson(),
      };

  @override
  String get type => 'Descendents';
}
