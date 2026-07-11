import 'package:cql/src/internal.dart';

/// Expression allowing tuples of any type to be built up as an expression.
class Tuple extends CqlExpression {
  Tuple({
    this.element,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Tuple.fromJson(Map<String, dynamic> json) => Tuple(
        element: json['element'] != null
            ? (json['element'] as List)
                .map((e) => TupleElement.fromJson(e as Map<String, dynamic>))
                .toList()
            : null,
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
                json['resultTypeSpecifier'] as Map<String, dynamic>)
            : null,
      );

  /// List of tuple elements specifying values for the elements of the tuple.
  List<TupleElement>? element;

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{'type': type};
    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('element', element?.map((e) => e.toJson()).toList());
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());

    return val;
  }

  @override
  String get type => 'Tuple';

  @override
  Future<Map<String, dynamic>> execute(Map<String, dynamic> context) async {
    final result = <String, dynamic>{};
    for (final e in element!) {
      result[e.name] = await e.value.execute(context);
    }
    return result;
  }
}
