import 'package:cql/src/internal.dart';

/// The SortClause element defines the sort order for the query.
class SortClause extends Element {
  SortClause({
    required this.by,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory SortClause.fromJson(Map<String, dynamic> json) => SortClause(
        by: List<SortByItem>.from(
          (json['by'] as List)
              .map((x) => SortByItem.fromJson(x as Map<String, dynamic>)),
        ),
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
  final List<SortByItem> by;

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{
      'by': List<dynamic>.from(by.map((x) => x.toJson())),
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

  String get type => 'SortClause';
}
