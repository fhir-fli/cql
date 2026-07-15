import 'package:cql/src/internal.dart';

/// The ForEach expression iterates over the list of elements in the source
/// element.
/// It returns a list with the same number of elements, where each element in
/// the new list is the result of evaluating the element expression for each
/// element in the source list.
/// If the source argument is null, the result is null.
/// If the element argument evaluates to null for some item in the source
/// list, the resulting list will contain a null for that element.
class ForEach extends CqlExpression {
  ForEach({
    required this.source,
    required this.element,
    required this.scope,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ForEach.fromJson(Map<String, dynamic> json) => ForEach(
        source: json['source']! as CqlExpression,
        element: json['element']! as CqlExpression,
        scope: json['scope']! as String,
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
                .toList()
            : null,
        localId: json['localId'] as String?,
        locator: json['locator'] as String?,
        resultTypeName: json['resultTypeName'] as String?,
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(
                json['resultTypeSpecifier'] as Map<String, dynamic>,
              )
            : null,
      );
  final CqlExpression element;
  final String scope;
  final CqlExpression source;

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{
      'type': type,
      'source': source.toJson(),
      'element': element.toJson(),
      'scope': scope,
    };
    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  @override
  String get type => 'ForEach';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final sourceResult = await source.execute(context);
    if (sourceResult == null) return null;
    final items = sourceResult is List ? sourceResult : [sourceResult];
    final results = <dynamic>[];
    for (final item in items) {
      context[scope] = item;
      final result = await element.execute(context);
      results.add(result);
    }
    context.remove(scope);
    return results;
  }
}
