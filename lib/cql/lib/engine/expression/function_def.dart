import 'package:json_annotation/json_annotation.dart';

import '../../cql.dart';

part 'function_def.g.dart';

/// Named function definition that can be invoked by any expression in the
/// artifact.
@JsonSerializable()
class FunctionDef extends ExpressionDef {
  /// List of operand definitions.
  List<OperandDef>? operand;

  /// Specifies if the function is external.
  bool? external;

  FunctionDef({this.operand, this.external}) : super(name: 'FunctionDef');

  factory FunctionDef.fromJson(Map<String, dynamic> json) =>
      _$FunctionDefFromJson(json);

  Map<String, dynamic> toJson() => _$FunctionDefToJson(this);
}
