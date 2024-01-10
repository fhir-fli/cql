import '../../../cql.dart';

class ExpressionDefs extends Expression {
  List<ExpressionDef> def = <ExpressionDef>[];

  ExpressionDefs();

  factory ExpressionDefs.fromJson(Map<String, dynamic> json) {
    return ExpressionDefs()
      ..def = json['def'] != null
          ? (json['def'] as List).map((i) => ExpressionDef.fromJson(i)).toList()
          : <ExpressionDef>[];
  }

  @override
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
  /// Access level, defaults to Public.
  AccessModifier? accessLevel;

  /// Execution context.
  String? context;

  /// Expression associated with the definition.
  Expression? expression;

  /// Name of the expression.
  String name;

  ExpressionDef({
    required this.name,
    this.context,
    this.accessLevel,
    this.expression,
  });

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
    if (json['type'] == 'FunctionDef') {
      return FunctionDef.fromJson(json);
    } else {
      return ExpressionDef(
        name: json['name'] as String,
        context: json['context'] as String?,
        accessLevel: json['accessLevel'] == 'Private'
            ? AccessModifier.private
            : json['accessLevel'] == 'Public'
                ? AccessModifier.public
                : null,
        expression: json['expression'] != null
            ? Expression.fromJson(json['expression'])
            : null,
      );
    }
  }

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

  static const _$AccessModifierEnumMap = {
    AccessModifier.public: 'Public',
    AccessModifier.private: 'Private',
  };
}
