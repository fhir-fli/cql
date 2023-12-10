import 'package:json_annotation/json_annotation.dart';

import '../../../cql.dart';

part 'code_system_def.g.dart';

/// The CodeSystemDef type defines a code system identifier that can then be
/// used to identify code systems involved in value set definitions.
@JsonSerializable()
class CodeSystemDef extends Element {
  /// The name of the code system used for reference.
  late String name;

  /// The unique identifier of the code system.
  late String id;

  /// The version of the code system to be used. If no version is specified, the
  /// most current published version of the code system is assumed.
  late String? version;

  /// Specifies the access level; default is Public.
  late AccessModifier accessLevel;

  CodeSystemDef(
      {required this.name,
      required this.id,
      this.version,
      this.accessLevel = AccessModifier.Public});

  factory CodeSystemDef.fromJson(Map<String, dynamic> json) =>
      _$CodeSystemDefFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CodeSystemDefToJson(this);
}
