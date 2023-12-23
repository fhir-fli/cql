import '../../../cql.dart';

/// Expression that invokes a previously defined function.
class FunctionRef extends ExpressionRef {
  /// Operands passed to the function.
  List<Expression>? operand;

  /// Declared signature of the function being called.
  List<TypeSpecifier>? signature;

  FunctionRef(
      {this.operand, this.signature, required super.name, super.libraryName});

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
      );

  @override
  Map<String, dynamic> toJson() => {
        if (signature != null)
          'signature': List<dynamic>.from(signature!.map((x) => x.toJson())),
        if (operand != null)
          'operand': List<dynamic>.from(operand!.map((x) => x.toJson())),
        'name': name,
        if (libraryName != null) 'libraryName': libraryName,
      };

  @override
  String get type => 'FunctionRef';
}
