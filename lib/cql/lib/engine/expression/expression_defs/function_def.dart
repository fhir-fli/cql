import '../../../cql.dart';

/// Named function definition that can be invoked by any expression in the
/// artifact.
class FunctionDef extends ExpressionDef {
  /// Specifies if the function is external.
  bool? external;

  bool? fluent;

  /// List of operand definitions.
  List<OperandDef>? operand;

  FunctionDef({
    String? name,
    super.context,
    super.accessLevel,
    super.expression,
    this.operand,
    this.external,
  }) : super(name: name ?? type);

  factory FunctionDef.fromJson(Map<String, dynamic> json) {
    return FunctionDef(
      name: json['name'] as String?,
      context: json['context'] as String?,
      accessLevel: json['accessLevel'] == 'Private'
          ? AccessModifier.private
          : json['accessLevel'] == 'Public'
              ? AccessModifier.public
              : null,
      expression: json['expression'] != null
          ? Expression.fromJson(json['expression'])
          : null,
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
    data['name'] = name;
    if (context != null) {
      data['context'] = context;
    }
    if (accessLevel != null) {
      data['accessLevel'] = _$AccessModifierEnumMap[accessLevel];
    }
    data['type'] = type;
    if (external != null) {
      data['external'] = external;
    }
    if (expression != null) {
      data['expression'] = expression!.toJson();
    }
    if (operand != null) {
      data['operand'] = operand!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  static String get type => 'FunctionDef';

  static const _$AccessModifierEnumMap = {
    AccessModifier.public: 'Public',
    AccessModifier.private: 'Private',
  };
}
