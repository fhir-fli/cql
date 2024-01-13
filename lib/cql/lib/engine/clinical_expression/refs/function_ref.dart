import '../../../cql.dart';

/// Expression that invokes a previously defined function.
class FunctionRef extends ExpressionRef {
  /// Operands passed to the function.
  List<Expression>? operand;

  /// Declared signature of the function being called.
  List<TypeSpecifier>? signature;

  FunctionRef({
    this.operand,
    this.signature,
    required super.name,
    super.libraryName,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory FunctionRef.fromJson(Map<String, dynamic> json) => FunctionRef(
        operand: json['operand'] != null
            ? List<Expression>.from(
                json['operand'].map((x) => Expression.fromJson(x)))
            : null,
        signature: json['signature'] != null
            ? List<TypeSpecifier>.from(
                json['signature'].map((x) => TypeSpecifier.fromJson(x)))
            : null,
        name: json['name']!,
        libraryName: json['libraryName'],
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {'type': type};

    if (signature != null) {
      json['signature'] = signature!.map((x) => x.toJson()).toList();
    }

    if (operand != null) {
      json['operand'] = operand!.map((x) => x.toJson()).toList();
    }

    json.addAll(super.toJson());
    return json;
  }

  @override
  String get type => 'FunctionRef';
}
