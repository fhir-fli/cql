import 'package:collection/collection.dart';

import 'package:cql/src/internal.dart';

class CqlValueSet extends CqlVocabulary {
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
  List<CqlCodeSystem>? codeSystems;

  // Static method to create a CqlValueSet from a ValueSet
  static CqlValueSet fromValueSet(ValueSetDef vs) {
    final vsi = CqlValueSet(
      id: vs.id ?? '',
      version: vs.version ?? '',
      name: vs.name ?? '',
      codeSystems: <CqlCodeSystem>[],
    );
    for (final cs in vs.codeSystem ?? <CodeSystemRef>[]) {
      vsi.codeSystems ??= <CqlCodeSystem>[];
      vsi.codeSystems!.add(CqlCodeSystem.fromCodeSystemRef(cs));
    }
    return vsi;
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

  // Method to add a CodeSystemInfo
  CqlValueSet withCodeSystem(CqlCodeSystem codeSystem) {
    codeSystems ??= <CqlCodeSystem>[];
    codeSystems!.add(codeSystem);
    return this;
  }
}
