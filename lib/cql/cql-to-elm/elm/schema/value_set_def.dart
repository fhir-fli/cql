import 'package:json_annotation/json_annotation.dart';

import '../../../cql.dart';

part 'value_set_def.g.dart';

/// The ValueSetDef type defines a value set identifier that can be referenced
/// by name anywhere within an expression.
///
/// The id specifies the globally unique identifier for the value set. This
/// may be an HL7 OID, a FHIR URL, or a CTS2 value set URL.
///
/// If version is specified, it will be used to resolve the version of the
/// value set definition to be used. Otherwise, the most current published
/// version of the value set is assumed.
///
/// If codeSystems are specified, they will be used to resolve the code
/// systems used within the value set definition to construct the expansion set.
///
/// Note that the recommended approach to statically binding to an expansion
/// set is to use a value set definition that specifies the version of each
/// code system used. The codeSystemVersions attribute is provided only to
/// ensure static binding can be achieved when the value set definition does
/// not specify code system versions as part of the definition header.
@JsonSerializable()
class ValueSetDef extends Element {
  /// The code system that should be used to construct the expansion set. Note
  /// that the recommended approach to statically binding to an expansion set
  /// is to use a value set definition that specifies the version of each code
  /// system used. The codeSystem elements are provided only to ensure static
  /// binding can be achieved when the value set definition does not specify
  /// code system versions as part of the definition header.
  late List<CodeSystemRef> codeSystem;

  /// The name of the value set.
  late String? name;

  /// The unique identifier of the value set to be retrieved.
  late String id;

  /// The version of the value set to be retrieved. If no version is provided, the most current published version of the value set is assumed.
  late String? version;

  /// Specifies the access level; default is Public.
  late AccessModifier accessLevel;

  ValueSetDef(
      {required this.codeSystem,
      this.name,
      required this.id,
      this.version,
      this.accessLevel = AccessModifier.Public});

  factory ValueSetDef.fromJson(Map<String, dynamic> json) =>
      _$ValueSetDefFromJson(json);

  Map<String, dynamic> toJson() => _$ValueSetDefToJson(this);
}
