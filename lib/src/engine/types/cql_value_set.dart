import 'package:collection/collection.dart';

import 'package:cql/src/internal.dart';
import 'package:meta/meta.dart';

/// The CQL System `ValueSet` type: a named set of codes used by terminology
/// membership operators.
///
/// A value set is a [CqlVocabulary] identified by its canonical [id], optional
/// [version] and local [name], optionally scoped to a list of [codeSystems]
/// that constrain which systems its codes may come from. Value sets are the
/// right-hand operand of CQL's `in`/`InValueSet` membership tests; resolving a
/// code's membership is delegated to a [TerminologyProvider].
@immutable
class CqlValueSet extends CqlVocabulary {
  /// Creates a value set from its canonical [id], [version], [name] and
  /// optional constraining [codeSystems].
  CqlValueSet({
    required super.id,
    required super.version,
    required super.name,
    this.codeSystems,
  });

  factory CqlValueSet.fromJson(Map<String, dynamic> json) {
    return CqlValueSet(
      id: json['id'] as String,
      version: json['version'] as String?,
      name: json['name'] as String,
      codeSystems: (json['codeSystems'] as List)
          .map((e) => CqlCodeSystem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  factory CqlValueSet.fromMap(Map<String, dynamic> map) =>
      CqlValueSet.fromJson(map);

  /// Builds a [CqlValueSet] from an ELM [ValueSetDef] declaration.
  ///
  /// Throws an [ArgumentError] if the definition lacks an id or name.
  factory CqlValueSet.fromValueSetDef(ValueSetDef valueSetDef) {
    if (valueSetDef.id == null || valueSetDef.name == null) {
      throw ArgumentError('ValueSetDef must have id, version, and name');
    }
    return CqlValueSet(
      id: valueSetDef.id!,
      version: valueSetDef.version,
      name: valueSetDef.name!,
      codeSystems:
          valueSetDef.codeSystem?.map(CqlCodeSystem.fromCodeSystemRef).toList(),
    );
  }
  final List<CqlCodeSystem>? codeSystems;

  /// Builds a [CqlValueSet] from an ELM [ValueSetDef], tolerating missing
  /// fields by substituting empty defaults.
  static CqlValueSet fromValueSet(ValueSetDef vs) {
    return CqlValueSet(
      id: vs.id ?? '',
      version: vs.version ?? '',
      name: vs.name ?? '',
      codeSystems: (vs.codeSystem ?? <CodeSystemRef>[])
          .map(CqlCodeSystem.fromCodeSystemRef)
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json['type'] = 'CqlValueSet';
    if (codeSystems != null) {
      json['codeSystems'] = codeSystems!.map((e) => e.toJson()).toList();
    }
    return json;
  }

  CqlValueSet copyWith({
    String? id,
    String? version,
    String? name,
    List<CqlCodeSystem>? codeSystems,
  }) {
    return CqlValueSet(
      id: id ?? this.id,
      version: version ?? this.version,
      name: name ?? this.name,
      codeSystems: codeSystems ?? this.codeSystems,
    );
  }

  Map<String, dynamic> toMap() => toJson();

  @override
  String toString() =>
      'CqlValueSet { id: $id, version: $version, name: $name, codeSystems: $codeSystems }';

  @override
  bool operator ==(covariant CqlValueSet other) {
    if (identical(this, other)) {
      return true;
    }
    return const DeepCollectionEquality()
        .equals(other.codeSystems, codeSystems);
  }

  @override
  int get hashCode => codeSystems.hashCode;
}
