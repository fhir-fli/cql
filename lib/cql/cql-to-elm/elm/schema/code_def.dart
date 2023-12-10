import 'package:json_annotation/json_annotation.dart';

import '../../../cql.dart';

part 'code_def.g.dart';

/// The CodeDef type defines a code identifier that can then be used to
/// reference single codes anywhere within an expression.
@JsonSerializable()
class CodeDef extends Element {
  /// The code system that contains the code being referenced.
  late CodeSystemRef? codeSystem;

  /// The name of the code used for reference.
  late String name;

  /// The unique identifier of the code.
  late String id;

  /// An optional display string used to describe the code.
  late String? display;

  /// Specifies the access level; default is Public.
  late AccessModifier accessLevel;

  CodeDef(
      {this.codeSystem,
      required this.name,
      required this.id,
      this.display,
      this.accessLevel = AccessModifier.Public});

  factory CodeDef.fromJson(Map<String, dynamic> json) =>
      _$CodeDefFromJson(json);

  Map<String, dynamic> toJson() => _$CodeDefToJson(this);
}
