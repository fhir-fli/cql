import 'package:json_annotation/json_annotation.dart';

import '../../cql.dart';

part 'code_system_def.g.dart';

@JsonSerializable()
class CodeSystemDefs {
  List<CodeSystemDef> def = [];

  CodeSystemDefs();

  factory CodeSystemDefs.fromJson(Map<String, dynamic> json) =>
      _$CodeSystemDefsFromJson(json);

  Map<String, dynamic> toJson() => _$CodeSystemDefsToJson(this);
}

/// The CodeSystemDef type defines a code system identifier that can then be
/// used to identify code systems involved in value set definitions.
@JsonSerializable()
class CodeSystemDef extends Element {
  /// The name of the code system used for reference.
  String? name;

  /// The unique identifier of the code system.
  String? id;

  /// The version of the code system to be used. If no version is specified, the
  /// most current published version of the code system is assumed.
  String? version;

  /// Specifies the access level; default is Public.
  AccessModifier accessLevel;

  CodeSystemDef(
      {this.name,
      this.id,
      this.version,
      this.accessLevel = AccessModifier.public});

  factory CodeSystemDef.fromJson(Map<String, dynamic> json) =>
      _$CodeSystemDefFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CodeSystemDefToJson(this);
}
