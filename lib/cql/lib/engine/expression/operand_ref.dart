import '../../cql.dart';

/// Expression allowing the value of an operand to be referenced within the body of a function definition.
class OperandRef extends Expression {
  /// Name of the referenced operand.
  String name;

  OperandRef({
    required this.name,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory OperandRef.fromJson(Map<String, dynamic> json) => OperandRef(
        name: json['name']!,
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
        'name': name,
        'type': type,
      };

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'OperandRef';
}
