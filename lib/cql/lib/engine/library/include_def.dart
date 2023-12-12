import 'package:json_annotation/json_annotation.dart';

import '../../cql.dart';

part 'include_def.g.dart';

@JsonSerializable()
class IncludeDefs {
  List<IncludeDef> def = [];

  IncludeDefs();

  factory IncludeDefs.fromJson(Map<String, dynamic> json) =>
      _$IncludeDefsFromJson(json);

  Map<String, dynamic> toJson() => _$IncludeDefsToJson(this);
}

/// Includes a library for use within the artifact.
@JsonSerializable()
class IncludeDef extends Element {
  /// A unique name within this artifact for the library reference.
  ///
  /// This name is used within this artifact to reference components of this library.
  String? localIdentifier;

  /// Defines the type of the library. If this attribute is omitted, the library
  /// is assumed to be an ELM library artifact.
  String? mediaType;

  /// Defines the path to the library.
  String? path;

  /// Optionally defines the required version number of the referenced library.
  String? version;

  IncludeDef({this.localIdentifier, this.mediaType, this.path, this.version});

  factory IncludeDef.fromJson(Map<String, dynamic> json) =>
      _$IncludeDefFromJson(json);

  Map<String, dynamic> toJson() => _$IncludeDefToJson(this);
}
