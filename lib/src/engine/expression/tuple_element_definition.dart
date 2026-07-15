import 'package:cql/src/internal.dart';

/// TupleElementDefinition defines the name and type of a single element
/// within a TupleTypeSpecifier.
class TupleElementDefinition extends Element {
  TupleElementDefinition({
    this.type,
    this.elementType,
    this.name,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory TupleElementDefinition.fromJson(Map<String, dynamic> json) =>
      TupleElementDefinition(
        type: json['type'] != null
            ? TypeSpecifierExpression.fromJson(
                json['type'] as Map<String, dynamic>,
              )
            : null,
        elementType: json['elementType'] != null
            ? TypeSpecifierExpression.fromJson(
                json['elementType'] as Map<String, dynamic>,
              )
            : null,
        name: json['name'] as String?,
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

  /// The type of the tuple element.
  TypeSpecifierExpression? elementType;

  /// The name of the tuple element.
  String? name;

  /// This element is deprecated. New implementations should use the new
  /// elementType element.
  TypeSpecifierExpression? type;

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{};
    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('type', type?.toJson());
    writeNotNull('elementType', elementType?.toJson());
    writeNotNull('name', name);
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());

    return val;
  }
}
