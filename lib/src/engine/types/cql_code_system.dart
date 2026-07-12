import 'package:cql/src/internal.dart';

/// The CQL System `CodeSystem` type: a reference to a terminology code system.
///
/// A code system is a [CqlVocabulary] identified by its canonical [id] (the
/// system URI), an optional [version], and a local [name]. It names the source
/// from which [CqlCode]s are drawn and can serve as a member of a
/// [CqlValueSet].
class CqlCodeSystem extends CqlVocabulary {
  /// Creates a code-system reference from its canonical [id], [version] and
  /// local [name].
  CqlCodeSystem({
    required super.id,
    required super.version,
    required super.name,
  });

  /// Builds a [CqlCodeSystem] from an ELM [CodeSystemDef] declaration.
  ///
  /// Throws an [ArgumentError] if the definition lacks an id or name.
  factory CqlCodeSystem.fromCodeSystemDef(CodeSystemDef codeSystemDef) {
    if (codeSystemDef.id == null || codeSystemDef.name == null) {
      throw ArgumentError('ValueSetDef must have id, version, and name');
    }
    return CqlCodeSystem(
      id: codeSystemDef.id!,
      version: codeSystemDef.version,
      name: codeSystemDef.name!,
    );
  }

  /// Builds a [CqlCodeSystem] from an ELM [CodeSystemRef] reference.
  factory CqlCodeSystem.fromCodeSystemRef(CodeSystemRef cs) {
    return CqlCodeSystem(
      id: cs.localId ?? cs.type,
      version: cs.name,
      name: cs.name,
    );
  }

  factory CqlCodeSystem.fromJson(Map<String, dynamic> json) {
    return CqlCodeSystem(
      id: json['id'] as String,
      version: json['version'] as String?,
      name: json['name'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['type'] = 'CodeSystem';
    return json;
  }

  // Getter for ID
  String? get getId => id;

  // Setter for ID
  set setId(String? id) {
    if (id != null) {
      this.id = id;
    }
  }

  // Fluent API for setting ID
  CqlCodeSystem withId(String id) {
    this.id = id;
    return this;
  }

  // Getter for version
  String? get getVersion => version;

  // Setter for version
  set setVersion(String? version) {
    if (version != null) {
      this.version = version;
    }
  }

  // Fluent API for setting version
  CqlCodeSystem withVersion(String version) {
    this.version = version;
    return this;
  }
}
