import 'package:cql/src/internal.dart';

/// Element within a Tuple expression providing the value of a specific element within a tuple literal expression.
class TupleElement extends Element {
  TupleElement({
    required this.value,
    required this.name,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory TupleElement.fromJson(Map<String, dynamic> json) => TupleElement(
        value: CqlExpression.fromJson(json['value'] as Map<String, dynamic>),
        name: json['name'] as String,
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

  /// Name of the tuple element.
  String name;

  /// Value expression of the tuple element.
  CqlExpression value;

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{
      'name': name,
      'value': value.toJson(),
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
  String toString() => toJson().toString();

  String get type => 'TupleElement';
}
