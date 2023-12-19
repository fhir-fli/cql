import 'package:json_annotation/json_annotation.dart';

import '../../../cql.dart';

class ExpressionDefs {
  List<Element> def = <Element>[];

  ExpressionDefs();

  factory ExpressionDefs.fromJson(Map<String, dynamic> json) {
    return ExpressionDefs()
      ..def = json['def'] != null
          ? (json['def'] as List).map((i) => Element.fromJson(i)).toList()
          : <Element>[];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (def.isNotEmpty) {
      data['def'] = def.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

/// Expression definition with an associated name that can be referenced by any
/// expression in the artifact.
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

  factory ExpressionDef.fromJson(Map<String, dynamic> json) {
    return ExpressionDef(
      name: json['name'] as String,
      context: json['context'] as String?,
      accessLevel:
          $enumDecodeNullable(_$AccessModifierEnumMap, json['accessLevel']),
      expression: json['expression'] != null
          ? Expression.fromJson(json['expression'])
          : null,
    );
  }
  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    if (context != null) {
      data['context'] = context;
    }
    if (accessLevel != null) {
      data['accessLevel'] = _$AccessModifierEnumMap[accessLevel];
    }
    if (expression != null) {
      data['expression'] = expression!.toJson();
    }
    return data;
  }
}

const _$AccessModifierEnumMap = {
  AccessModifier.public: 'Public',
  AccessModifier.private: 'Private',
};
