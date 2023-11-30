import 'package:json_annotation/json_annotation.dart';

import '../cql.dart';

class ElmLibrary extends ElmElement {
  // TODO(Dokotela): unclear if the commented out variables are needed
  //  source: any;
  UsingDef? usings;
  List<ParameterDef> parameters;
  List<CodeSystemDef> codeSystems;
  List<ValueSetDef> valueSets;
  List<CodeDef> codes;
  List<ConceptDef> concepts;
  List<ContextDef> contexts;
  // In some versions this seems to be called statements not expressions
  List<ExpressionDef> expressions;
  FunctionDef? functions;
  IncludeDef? includes;
  VersionedIdentifier? identifier;
  VersionedIdentifier? schemaIdentifier;
  // private List<ModelReference> dataModelsField;
  // private List<LibraryReference> librariesField;

  ElmLibrary({
    this.usings,
    List<ParameterDef>? parameters,
    List<CodeSystemDef>? codeSystems,
    List<ValueSetDef>? valueSets,
    List<CodeDef>? codes,
    List<ConceptDef>? concepts,
    List<ContextDef>? contexts,
    List<ExpressionDef>? expressions,
    this.functions,
    this.includes,
    this.identifier,
    this.schemaIdentifier,
  })  : parameters = parameters ?? <ParameterDef>[],
        codeSystems = codeSystems ?? <CodeSystemDef>[],
        valueSets = valueSets ?? <ValueSetDef>[],
        codes = codes ?? <CodeDef>[],
        concepts = concepts ?? <ConceptDef>[],
        contexts = contexts ?? <ContextDef>[],
        expressions = expressions ?? <ExpressionDef>[];
}

class VersionedIdentifier {
  String id;
  String? system;
  String? version;

  VersionedIdentifier({required this.id, this.system, this.version});
}

class UsingDef {
  String localIdentifier;
  Uri uri;
  String? version;

  UsingDef({required this.localIdentifier, required String uri, this.version})
      : uri = Uri.tryParse(uri) != null
            ? Uri.parse(uri)
            : throw ArgumentError('uri is not a valid Uri');
}

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
}

class ContextDef extends ElmElement {
  final String name;

  ContextDef({required this.name});
}
