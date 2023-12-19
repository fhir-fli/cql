import '../../cql.dart';

/// Named function definition that can be invoked by any expression in the
/// artifact.
class FunctionDef extends ExpressionDef {
  /// List of operand definitions.
  List<OperandDef>? operand;

  /// Specifies if the function is external.
  bool? external;

  bool? fluent;

  FunctionDef({this.operand, this.external}) : super(name: 'FunctionDef');

  factory FunctionDef.fromJson(Map<String, dynamic> json) {
    return FunctionDef(
      operand: json['operand'] != null
          ? (json['operand'] as List)
              .map((i) => OperandDef.fromJson(i))
              .toList()
          : null,
      external: json['external'] as bool?,
    );
  }
  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (operand != null) {
      data['operand'] = operand!.map((v) => v.toJson()).toList();
    }
    if (external != null) {
      data['external'] = external;
    }
    return data;
  }
}
