import '../../../cql.dart';

/// First operator returns the first element in a list.
/// If the order by attribute is specified, the list is sorted by that ordering prior to returning the first element.
/// If the argument is null, the result is null.
class First extends OperatorExpression {
  final String? orderBy;
  final Expression source;

  First({
    required this.source,
    required this.orderBy,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory First.fromJson(Map<String, dynamic> json) => First(
        source: Expression.fromJson(json['source']!),
        orderBy: json['orderBy'],
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
        'orderBy': orderBy,
      };

  @override
  String get type => 'First';
}
