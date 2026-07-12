import 'package:cql/src/internal.dart';

/// Container for the `contexts` section of a CQL library, holding the list of
/// [ContextDef] definitions declared within it.
///
/// Each [ContextDef] names a context (such as `Patient` or `Population`) in
/// which the library's expressions are evaluated.
class ContextDefs {
  ContextDefs();

  factory ContextDefs.fromJson(Map<String, dynamic> json) => ContextDefs()
    ..type = json['type'] as String?
    ..def = (json['def'] as List<dynamic>)
        .map((e) => ContextDef.fromJson(e as Map<String, dynamic>))
        .toList();
  String? type;
  List<ContextDef> def = <ContextDef>[];

  Map<String, dynamic> toJson() => <String, dynamic>{
        if (type != null) 'type': type,
        'def': def.map((e) => e.toJson()).toList(),
      };

  dynamic execute() => def.map((e) => e.execute()).toList();
}

/// Declares the context (for example `Patient` or `Population`) in which
/// subsequent expression definitions within a CQL library are evaluated.
///
/// The context determines the scope of retrieves and the identity of the
/// evaluation subject; expressions defined after a context declaration are
/// evaluated in that context.
class ContextDef extends Element {
  ContextDef({
    required this.name,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ContextDef.fromJson(Map<String, dynamic> json) => ContextDef(
        name: json['name'] as String,
      )
        ..annotation = (json['annotation'] as List<dynamic>?)
            ?.map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
            .toList()
        ..localId = json['localId'] as String?
        ..locator = json['locator'] as String?
        ..resultTypeName = json['resultTypeName'] as String?
        ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
            ? null
            : TypeSpecifierExpression.fromJson(
                json['resultTypeSpecifier'] as Map<String, dynamic>,
              );
  final String name;

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    val['name'] = name;
    return val;
  }

  dynamic execute() {
    throw UnimplementedError();
  }
}
