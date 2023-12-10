import 'package:json_annotation/json_annotation.dart';

import '../../../cql.dart';

part 'parameter_def.g.dart';

/// Definition of a parameter that can be referenced by name within an expression.
@JsonSerializable()
class ParameterDef extends Element {
  /// Default value expression for the parameter.
  Expression? defaultExpression;

  /// Type specifier for the parameter.
  ExpTypeSpecifier? parameterTypeSpecifier;

  /// Name of the parameter.
  String name;

  /// Qualified name of the parameter type, optional.
  QName? parameterType;

  /// Access level, defaults to Public.
  AccessModifier accessLevel;

  ParameterDef(
      {this.defaultExpression,
      this.parameterTypeSpecifier,
      required this.name,
      this.parameterType,
      this.accessLevel = AccessModifier.Public});

  factory ParameterDef.fromJson(Map<String, dynamic> json) =>
      _$ParameterDefFromJson(json);

  Map<String, dynamic> toJson() => _$ParameterDefToJson(this);
}
