import 'package:json_annotation/json_annotation.dart';

import '../../cql.dart';

part 'using_def.g.dart';

@JsonSerializable()
class UsingDefs {
  List<UsingDef> def = [];

  UsingDefs();

  factory UsingDefs.fromJson(Map<String, dynamic> json) =>
      _$UsingDefsFromJson(json);

  Map<String, dynamic> toJson() => _$UsingDefsToJson(this);
}

/// Defines a data model that is available within the artifact.
@JsonSerializable()
class UsingDef extends Element {
  /// A unique name within this artifact for the library reference.
  ///
  /// This name is used within this artifact to reference components of this library.
  String? localIdentifier;

  /// The URI of the model that is being referenced.
  ///
  /// This URL must also be defined as a namespace in the root element of the document to allow for elements of the model to be referenced within the artifact.
  String? uri;

  /// Optionally defines the required version number of the referenced library.
  String? version;

  UsingDef({this.localIdentifier, this.uri, this.version});

  factory UsingDef.fromJson(Map<String, dynamic> json) =>
      _$UsingDefFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UsingDefToJson(this);
}
