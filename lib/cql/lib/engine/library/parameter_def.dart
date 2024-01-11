import '../../cql.dart';

class ParameterDefs {
  List<ParameterDef> def = <ParameterDef>[];

  ParameterDefs();

  factory ParameterDefs.fromJson(Map<String, dynamic> json) => ParameterDefs()
    ..def = (json['def'] as List<dynamic>)
        .map((e) => ParameterDef.fromJson(e as Map<String, dynamic>))
        .toList();

  Map<String, dynamic> toJson() => <String, dynamic>{
        'def': def.map((e) => e.toJson()).toList(),
      };
}

/// Definition of a parameter that can be referenced by name within an expression.
class ParameterDef extends Element {
  /// Name of the parameter.
  String name;

  /// Access level, defaults to Public.
  AccessModifier accessLevel;

  /// Default value expression for the parameter.
  Expression? defaultExpression;

  /// Qualified name of the parameter type, optional.
  QName? parameterType;

  /// Type specifier for the parameter.
  TypeSpecifier? parameterTypeSpecifier;

  ParameterDef({
    required this.name,
    this.accessLevel = AccessModifier.public,
    this.parameterType,
    this.defaultExpression,
    this.parameterTypeSpecifier,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ParameterDef.fromJson(Map<String, dynamic> json) => ParameterDef(
        name: json['name'] as String,
        accessLevel: json['accessLevel'] == 'private'
            ? AccessModifier.private
            : AccessModifier.public,
        defaultExpression: json['default'] == null
            ? null
            : Expression.fromJson(json['default'] as Map<String, dynamic>),
        parameterTypeSpecifier: json['parameterTypeSpecifier'] == null
            ? null
            : TypeSpecifier.fromJson(
                json['parameterTypeSpecifier'] as Map<String, dynamic>),
        parameterType: json['parameterType'] == null
            ? null
            : QName.fromJson(json['parameterType'] as String),
      )
        ..annotation = (json['annotation'] as List<dynamic>?)
            ?.map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
            .toList()
        ..localId = json['localId'] as String?
        ..locator = json['locator'] as String?
        ..resultTypeName = json['resultTypeName'] as String?
        ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
            ? null
            : TypeSpecifier.fromJson(
                json['resultTypeSpecifier'] as Map<String, dynamic>);

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    val['name'] = name;
    val['accessLevel'] = _$AccessModifierEnumMap[accessLevel]!;
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());

    writeNotNull('default', defaultExpression?.toJson());
    writeNotNull('parameterType', parameterType?.toJson());
    writeNotNull('parameterTypeSpecifier', parameterTypeSpecifier?.toJson());
    return val;
  }

  static const _$AccessModifierEnumMap = {
    AccessModifier.public: 'Public',
    AccessModifier.private: 'Private',
  };

  @override
  String toString() => toJson().toString();
}
