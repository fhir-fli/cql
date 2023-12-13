import 'package:json_annotation/json_annotation.dart';

import '../../cql.dart';

part 'parameter_def.g.dart';

@JsonSerializable()
class ParameterDefs {
  List<ParameterDef> def = <ParameterDef>[];

  ParameterDefs();

  factory ParameterDefs.fromJson(Map<String, dynamic> json) =>
      _$ParameterDefsFromJson(json);

  Map<String, dynamic> toJson() => _$ParameterDefsToJson(this);
}

/// Definition of a parameter that can be referenced by name within an expression.
@JsonSerializable()
class ParameterDef extends Element {
  /// Name of the parameter.
  String name;

  /// Access level, defaults to Public.
  AccessModifier accessLevel;

  /// Type specifier for the parameter.
  TypeSpecifier? parameterTypeSpecifier;

  /// Default value expression for the parameter.
  Expression? defaultExpression;

  /// Qualified name of the parameter type, optional.
  QName? parameterType;

  ParameterDef({
    required this.name,
    this.accessLevel = AccessModifier.public,
    this.parameterTypeSpecifier,
    this.defaultExpression,
    this.parameterType,
  });

  factory ParameterDef.fromJson(Map<String, dynamic> json) =>
      _$ParameterDefFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ParameterDefToJson(this);
}
