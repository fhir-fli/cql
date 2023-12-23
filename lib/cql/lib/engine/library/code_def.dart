import 'package:json_annotation/json_annotation.dart';

import '../../cql.dart';

part 'code_def.g.dart';

@JsonSerializable()
class CodeDefs extends Element {
  List<CodeDef> def = <CodeDef>[];

  CodeDefs();

  factory CodeDefs.fromJson(Map<String, dynamic> json) =>
      _$CodeDefsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CodeDefsToJson(this);
}

/// The CodeDef type defines a code identifier that can then be used to
/// reference single codes anywhere within an expression.
@JsonSerializable()
class CodeDef extends Element {
  /// Specifies the access level; default is Public.
  AccessModifier accessLevel;

  /// The code system that contains the code being referenced.
  CodeSystemRef? codeSystem;

  /// An optional display string used to describe the code.
  String? display;

  /// The unique identifier of the code.
  String id;

  /// The name of the code used for reference.
  String name;

  CodeDef({
    required this.name,
    required this.id,
    this.display,
    this.accessLevel = AccessModifier.public,
    this.codeSystem,
  });

  factory CodeDef.fromJson(Map<String, dynamic> json) =>
      _$CodeDefFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CodeDefToJson(this);
}
