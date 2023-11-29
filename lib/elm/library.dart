import 'package:json_annotation/json_annotation.dart';

import '../cql.dart';

part 'library.g.dart';

@JsonSerializable()
class VersionedIdentifier {
  String id;
  String? system;
  String? version;

  VersionedIdentifier({required this.id, this.system, this.version});

  factory VersionedIdentifier.fromJson(Map<String, dynamic> json) =>
      _$VersionedIdentifierFromJson(json);

  Map<String, dynamic> toJson() => _$VersionedIdentifierToJson(this);
}

@JsonSerializable()
class UsingDef {
  String localIdentifier;
  Uri uri;
  String? version;

  UsingDef({required this.localIdentifier, required String uri, this.version})
      : uri = Uri.tryParse(uri) != null
            ? Uri.parse(uri)
            : throw ArgumentError('uri is not a valid Uri');

  factory UsingDef.fromJson(Map<String, dynamic> json) =>
      _$UsingDefFromJson(json);

  Map<String, dynamic> toJson() => _$UsingDefToJson(this);
}

@JsonSerializable()
class IncludeDef {
  String localIdentifier;
  Uri mediaType;
  Uri path;
  String? version;

  IncludeDef({
    required this.localIdentifier,
    String? mediaType,
    required String path,
    this.version,
  })  : mediaType = mediaType != null && Uri.tryParse(mediaType) != null
            ? Uri.parse(mediaType)
            : throw ArgumentError('mediaType is not a valid Uri'),
        path = Uri.tryParse(path) != null
            ? Uri.parse(path)
            : Uri.parse('application/elm+xml');

  factory IncludeDef.fromJson(Map<String, dynamic> json) =>
      _$IncludeDefFromJson(json);

  Map<String, dynamic> toJson() => _$IncludeDefToJson(this);
}

@JsonSerializable()
class ContextDef extends ElmElement {
  final String name;

  const ContextDef({required this.name});

  factory ContextDef.fromJson(Map<String, dynamic> json) =>
      _$ContextDefFromJson(json);

  Map<String, dynamic> toJson() => _$ContextDefToJson(this);
}

@JsonSerializable()
class ElmLibrary extends ElmElement {
  VersionedIdentifier identifier;
  VersionedIdentifier schemaIdentifier;
  UsingDef? usings;
  IncludeDef? includes;
  List<ParameterDef> parameters;
  List<CodeSystemDef> codeSystems;
  List<ValueSetDef> valueSets;
  List<CodeDef> codes;
  List<ConceptDef> concepts;
  List<ContextDef> contexts;
  List<ExpressionDef> statements;

  ElmLibrary({
    required this.identifier,
    required this.schemaIdentifier,
    this.usings,
    this.includes,
    List<ParameterDef>? parameters,
    List<CodeSystemDef>? codeSystems,
    List<ValueSetDef>? valueSets,
    List<CodeDef>? codes,
    List<ConceptDef>? concepts,
    List<ContextDef>? contexts,
    List<ExpressionDef>? statements,
  })  : parameters = parameters ?? <ParameterDef>[],
        codeSystems = codeSystems ?? <CodeSystemDef>[],
        valueSets = valueSets ?? <ValueSetDef>[],
        codes = codes ?? <CodeDef>[],
        concepts = concepts ?? <ConceptDef>[],
        contexts = contexts ?? <ContextDef>[],
        statements = statements ?? <ExpressionDef>[];

  factory ElmLibrary.fromJson(Map<String, dynamic> json) =>
      _$ElmLibraryFromJson(json);

  Map<String, dynamic> toJson() => _$ElmLibraryToJson(this);
}
