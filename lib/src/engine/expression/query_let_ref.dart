import 'package:cql/src/internal.dart';

/// The QueryLetRef expression allows for the reference of a specific let definition within the scope of a query.
class QueryLetRef extends CqlExpression {
  QueryLetRef({
    required this.name,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory QueryLetRef.fromJson(Map<String, dynamic> json) => QueryLetRef(
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
  final String name;

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{
      'type': type,
      'name': name,
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
  String toString() {
    return 'QueryLetRef{name: $name}';
  }

  @override
  String get type => 'QueryLetRef';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    return context[name];
  }
}
