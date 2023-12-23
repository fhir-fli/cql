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
  /// Access level, defaults to Public.
  AccessModifier accessLevel;

  /// Default value expression for the parameter.
  @JsonKey(name: 'default')
  Expression? defaultExpression;

  /// Name of the parameter.
  String name;

  /// Qualified name of the parameter type, optional.
  QName? parameterType;

  /// Type specifier for the parameter.
  TypeSpecifier? parameterTypeSpecifier;

  ParameterDef({
    required this.name,
    this.accessLevel = AccessModifier.public,
    this.defaultExpression,
    this.parameterTypeSpecifier,
    this.parameterType,
  });

  factory ParameterDef.fromJson(Map<String, dynamic> json) =>
      _$ParameterDefFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ParameterDefToJson(this);

  @override
  String toString() => toJson().toString();
}
