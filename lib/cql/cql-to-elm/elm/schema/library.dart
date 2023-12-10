import 'package:json_annotation/json_annotation.dart';

import 'schema.dart';

part 'library.g.dart';

/// Library represents a serialized library of CQL-Expression Logic Model.
@JsonSerializable()
class Library extends Element {
  /// A Library is an instance of a CQL-ELM library.

  /// It contains various elements such as identifier, schemaIdentifier, usings, includes, parameters, codeSystems, valueSets, codes, concepts, and statements.
  VersionedIdentifier? identifier;

  /// This is the identifier of the XML schema (and its version) which governs the structure of this Library.
  VersionedIdentifier? schemaIdentifier;

  /// Set of data models referenced in the Expression objects in this knowledge artifact.
  UsingDefs? usings;

  /// Set of libraries referenced by this artifact. Components of referenced libraries may be used within this artifact.
  IncludeDefs? includes;

  /// The code systems defined within this library.
  CodeSystemDefs? codeSystems;

  /// The parameters defined within this library.
  ParameterDefs? parameters;

  /// The value sets defined within this library.
  ValueSetDefs? valueSets;

  /// The statements section contains the expression and function definitions for the library.
  ExpressionDefs? defines;

  FunctionDefs? functions;

  /// The concepts defined within this library.
  ConceptDefs? concepts;

  Library({
    this.identifier,
    VersionedIdentifier? schemaIdentifier,
    UsingDefs? usings,
    this.includes,
    this.codeSystems,
    this.parameters,
    this.valueSets,
    this.defines,
    this.functions,
    this.concepts,
  })  : this.schemaIdentifier = schemaIdentifier ??
            VersionedIdentifier(
              id: 'urn:hl7-org:elm',
              version: 'r1',
            ),
        this.usings = usings ?? UsingDefs()
          ..def = [
            UsingDef(localIdentifier: 'System', uri: 'urn:hl7-org:elm-types:r1')
          ],
        super(annotation: [
          {
            "translatorVersion": "0.0.0-dev1",
            "translatorOptions": "",
            "type": "CqlToElmInfo"
          }
        ]);

  factory Library.fromJson(Map<String, dynamic> json) =>
      _$LibraryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LibraryToJson(this);
}
