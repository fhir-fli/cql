import 'package:json_annotation/json_annotation.dart';

import '../../cql.dart';

part 'expression_def.g.dart';

@JsonSerializable()
class ExpressionDefs {
  List<Element> def = <Element>[];

  ExpressionDefs();

  factory ExpressionDefs.fromJson(Map<String, dynamic> json) =>
      _$ExpressionDefsFromJson(json);

  Map<String, dynamic> toJson() => _$ExpressionDefsToJson(this);
}

/// Expression definition with an associated name that can be referenced by any
/// expression in the artifact.
@JsonSerializable()
class ExpressionDef extends Element {
  /// Name of the expression.
  String name;

  /// Execution context.
  String? context;

  /// Access level, defaults to Public.
  AccessModifier? accessLevel;

  /// Expression associated with the definition.
  Expression? expression;

  ExpressionDef({
    required this.name,
    this.context,
    this.accessLevel,
    this.expression,
  });

  factory ExpressionDef.public({
    required String name,
    String? context,
    required Expression expression,
  }) =>
      ExpressionDef(
        name: name,
        context: context,
        accessLevel: AccessModifier.public,
        expression: expression,
      );

  factory ExpressionDef.private({
    required String name,
    String? context,
    required Expression expression,
  }) =>
      ExpressionDef(
        name: name,
        context: context,
        accessLevel: AccessModifier.private,
        expression: expression,
      );

  factory ExpressionDef.context({
    required String name,
    String? context,
    required Expression expression,
  }) =>
      ExpressionDef(
        name: name,
        context: context,
        expression: expression,
      );

  factory ExpressionDef.fromJson(Map<String, dynamic> json) =>
      _$ExpressionDefFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ExpressionDefToJson(this);
}
