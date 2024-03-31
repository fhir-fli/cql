import '../../../cql.dart';

/// Last operator returns the last element in a list.
/// If the order by attribute is specified, the list is sorted by that ordering prior to returning the last element.
/// If the argument is null, the result is null.
class Last extends OperatorExpression {
  final String? orderBy;
  final CqlExpression source;

  Last({
    required this.source,
    this.orderBy,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Last.fromJson(Map<String, dynamic> json) {
    return Last(
      source: CqlExpression.fromJson(json['source']!),
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
          ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'source': source.toJson(),
    };

    if (orderBy != null) {
      data['orderBy'] = orderBy;
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
  String get type => 'Last';
}
