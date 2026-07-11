import 'package:cql/src/internal.dart';

/// Expression allowing the value of an operand to be referenced within the body of a function definition.
class OperandRef extends CqlExpression {
  OperandRef({
    required this.name,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory OperandRef.fromRef(Ref ref) => OperandRef(
        name: ref.name,
        annotation: ref.annotation,
        localId: ref.localId,
        locator: ref.locator,
        resultTypeName: ref.resultTypeName,
        resultTypeSpecifier: ref.resultTypeSpecifier,
      );

  factory OperandRef.fromJson(Map<String, dynamic> json) => OperandRef(
        name: json['name']! as String,
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

  /// Name of the referenced operand.
  String name;

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{
      'name': name,
      'type': type,
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
  String get type => 'OperandRef';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    return context[name];
  }
}
