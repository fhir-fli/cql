import '../cql.dart';

class ElmLibrary {
  late Map<String, dynamic> source;
  List<Map<String, dynamic>> usings = [];
  Map<String, ParameterDef> parameters = {};
  Map<String, CodeSystemDef> codesystems = {};
  Map<String, ValueSetDef> valuesets = {};
  Map<String, CodeDef> codes = {};
  Map<String, ConceptDef> concepts = {};
  Map<String, dynamic> expressions = {};
  Map<String, List<FunctionDef>> functions = {};
  Map<String, dynamic> includes = {};

  ElmLibrary(Map<String, dynamic> json, [dynamic libraryManager]) {
    source = json;
    final List<Map<String, dynamic>> usingDefs = (json['library']['usings'] !=
                null &&
            json['library']['usings']['def'] != null)
        ? List.from(json['library']['usings']['def'])
            .where((u) => u['localIdentifier'] != 'System')
            .map<Map<String, dynamic>>(
                (u) => {'name': u['localIdentifier'], 'version': u['version']})
            .toList()
        : [];

    usings.addAll(usingDefs);

    parameters = json['library']['parameters'] != null &&
            json['library']['parameters']['def'] != null
        ? Map.fromEntries(
            List.from(json['library']['parameters']['def'])
                .map<MapEntry<String, ParameterDef>>(
              (param) => MapEntry<String, ParameterDef>(
                  param['name'], ParameterDef.fromJson(param)),
            ),
          )
        : <String, ParameterDef>{};

    codesystems = json['library']['codeSystems'] != null &&
            json['library']['codeSystems']['def'] != null
        ? Map.fromEntries(
            List.from(json['library']['codeSystems']['def'])
                .map<MapEntry<String, CodeSystemDef>>(
              (codesystem) => MapEntry<String, CodeSystemDef>(
                  codesystem['name'], CodeSystemDef(codesystem)),
            ),
          )
        : <String, CodeSystemDef>{};

    valuesets = json['library']['valueSets'] != null &&
            json['library']['valueSets']['def'] != null
        ? Map.fromEntries(
            List.from(json['library']['valueSets']['def'])
                .map<MapEntry<String, ValueSetDef>>(
              (valueset) => MapEntry<String, ValueSetDef>(
                  valueset['name'], ValueSetDef(valueset)),
            ),
          )
        : <String, ValueSetDef>{};

    codes = json['library']['codes'] != null &&
            json['library']['codes']['def'] != null
        ? Map.fromEntries(
            List.from(json['library']['codes']['def'])
                .map<MapEntry<String, CodeDef>>(
              (code) => MapEntry<String, CodeDef>(code['name'], CodeDef(code)),
            ),
          )
        : <String, CodeDef>{};

    concepts = json['library']['concepts'] != null &&
            json['library']['concepts']['def'] != null
        ? Map.fromEntries(
            List.from(json['library']['concepts']['def'])
                .map<MapEntry<String, ConceptDef>>(
              (concept) => MapEntry<String, ConceptDef>(
                  concept['name'], ConceptDef(concept)),
            ),
          )
        : <String, ConceptDef>{};

    final exprDefs = json['library']['statements'] != null &&
            json['library']['statements']['def'] != null
        ? List.from(json['library']['statements']['def'])
        : [];

    for (final expr in exprDefs) {
      if (expr['type'] == 'FunctionDef') {
        if (functions[expr['name']] == null) {
          functions[expr['name']] = [];
        }
        functions[expr['name']]!.add(FunctionDef.fromJson(expr));
      } else {
        expressions[expr['name']] = ExpressionDef.fromJson(expr);
      }
    }

    final inclDefs = json['library']['includes'] != null &&
            json['library']['includes']['def'] != null
        ? List.from(json['library']['includes']['def'])
        : [];

    for (final incl in inclDefs) {
      if (libraryManager != null) {
        includes[incl['localIdentifier']] =
            libraryManager.resolve(incl['path'], incl['version']);
      }
    }

    for (final iProperty in includes.keys) {
      if (includes[iProperty] != null &&
          includes[iProperty]['codesystems'] != null) {
        for (final csProperty in includes[iProperty]['codesystems'].keys) {
          codesystems[csProperty] =
              includes[iProperty]['codesystems'][csProperty];
        }
      }
    }
  }

  Map<String, dynamic> toJson() {
    return source;
  }

  List<FunctionDef>? getFunction(String identifier) {
    return functions[identifier];
  }

  dynamic get(String identifier) {
    return expressions[identifier] ??
        includes[identifier] ??
        getFunction(identifier);
  }

  dynamic getValueSet(String identifier, String libraryName) {
    if (valuesets[identifier] != null) {
      return valuesets[identifier];
    }
    return includes[libraryName] != null
        ? includes[libraryName]['valuesets'][identifier]
        : null;
  }

  dynamic getCodeSystem(String identifier) {
    return codesystems[identifier];
  }

  dynamic getCode(String identifier) {
    return codes[identifier];
  }

  dynamic getConcept(String identifier) {
    return concepts[identifier];
  }

  ParameterDef? getParameter(String name) {
    return parameters[name];
  }
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
