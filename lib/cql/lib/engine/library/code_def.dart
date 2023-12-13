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
  /// The name of the code used for reference.
  late String name;

  /// The unique identifier of the code.
  late String id;

  /// An optional display string used to describe the code.
  late String? display;

  /// Specifies the access level; default is Public.
  late AccessModifier accessLevel;

  /// The code system that contains the code being referenced.
  late CodeSystemRef? codeSystem;

  CodeDef({
    required this.name,
    required this.id,
    this.display,
    this.accessLevel = AccessModifier.Public,
    this.codeSystem,
  });

  factory CodeDef.fromJson(Map<String, dynamic> json) =>
      _$CodeDefFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CodeDefToJson(this);
}
