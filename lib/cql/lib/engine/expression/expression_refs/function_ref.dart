import '../../../cql.dart';

/// Expression that invokes a previously defined function.
class FunctionRef extends ExpressionRef {
  /// Operands passed to the function.
  List<Expression>? operand;

  /// Declared signature of the function being called.
  List<TypeSpecifier>? signature;

  FunctionRef({this.signature, this.operand, required super.name});

  factory FunctionRef.fromJson(Map<String, dynamic> json) => FunctionRef(
        signature: json['signature'] != null
            ? List<TypeSpecifier>.from(
                json['signature'].map((x) => TypeSpecifier.fromJson(x)))
            : null,
        operand: json['operand'] != null
            ? List<Expression>.from(
                json['operand'].map((x) => Expression.fromJson(x)))
            : null,
        name: json['name']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'signature': signature != null
            ? List<dynamic>.from(signature!.map((x) => x.toJson()))
            : null,
        'operand': operand != null
            ? List<dynamic>.from(operand!.map((x) => x.toJson()))
            : null,
        'name': name,
      };
}
