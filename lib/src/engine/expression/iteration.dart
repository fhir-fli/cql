import 'package:cql/src/internal.dart';

/// The Iteration expression returns the current iteration number of a scoped
/// operation.
class Iteration extends CqlExpression {
  Iteration({
    required this.scope,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Iteration.fromJson(Map<String, dynamic> json) => Iteration(
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
  final String scope;

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{
      'type': type,
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
  String toString() => toJson().toString();

  @override
  String get type => 'Iteration';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    return context[scope.isEmpty ? r'$iteration' : scope];
  }
}
