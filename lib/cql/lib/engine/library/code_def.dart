import '../../cql.dart';

class CodeDefs extends Element {
  List<CodeDef> def = <CodeDef>[];

  CodeDefs();

  factory CodeDefs.fromJson(Map<String, dynamic> json) => CodeDefs()
    ..def = (json['def'] as List<dynamic>)
        .map((e) => CodeDef.fromJson(e as Map<String, dynamic>))
        .toList();

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'def': def.map((e) => e.toJson()).toList(),
      };
}

/// The CodeDef type defines a code identifier that can then be used to
/// reference single codes anywhere within an expression.
class CodeDef extends Element {
  /// The name of the code used for reference.
  String name;

  /// The unique identifier of the code.
  String id;

  /// An optional display string used to describe the code.
  String? display;

  /// Specifies the access level; default is Public.
  AccessModifier accessLevel;

  /// The code system that contains the code being referenced.
  CodeSystemRef? codeSystem;

  CodeDef({
    required this.name,
    required this.id,
    this.display,
    this.accessLevel = AccessModifier.public,
    this.codeSystem,
  });

  factory CodeDef.fromJson(Map<String, dynamic> json) => CodeDef(
        name: json['name'] as String,
        id: json['id'] as String,
        display: json['display'] as String?,
        accessLevel: json['accessLevel'] == 'Private'
            ? AccessModifier.private
            : AccessModifier.public,
        codeSystem: json['codeSystem'] == null
            ? null
            : CodeSystemRef.fromJson(
                json['codeSystem'] as Map<String, dynamic>),
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
    val['id'] = id;
    writeNotNull('display', display);
    val['accessLevel'] = _$AccessModifierEnumMap[accessLevel]!;
    writeNotNull('codeSystem', codeSystem?.toJson());
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());

    return val;
  }

  static const _$AccessModifierEnumMap = {
    AccessModifier.public: 'Public',
    AccessModifier.private: 'Private',
  };
}
