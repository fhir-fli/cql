import '../../cql.dart';

class UsingDefs {
  List<UsingDef> def = [];

  UsingDefs();

  factory UsingDefs.fromJson(Map<String, dynamic> json) => UsingDefs()
    ..def = (json['def'] as List<dynamic>)
        .map((e) => UsingDef.fromJson(e as Map<String, dynamic>))
        .toList();

  Map<String, dynamic> toJson() => <String, dynamic>{
        'def': def.map((e) => e.toJson()).toList(),
      };
}

/// Defines a data model that is available within the artifact.
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

  factory UsingDef.fromJson(Map<String, dynamic> json) => UsingDef(
        localIdentifier: json['localIdentifier'] as String?,
        uri: json['uri'] as String?,
        version: json['version'] as String?,
      )
        ..annotation = (json['annotation'] as List<dynamic>?)
            ?.map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
            .toList()
        ..localId = json['localId'] as String?
        ..locator = json['locator'] as String?
        ..resultTypeName = json['resultTypeName'] as String?
        ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
            ? null
            : TypeSpecifier.fromJson(
                json['resultTypeSpecifier'] as Map<String, dynamic>);

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    writeNotNull('localIdentifier', localIdentifier);
    writeNotNull('uri', uri);
    writeNotNull('version', version);
    return val;
  }
}
