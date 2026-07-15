import 'package:meta/meta.dart';

/// Identifies a data model (e.g. FHIR, QDM) by [id], with an optional
/// [system] URI and [version].
@immutable
class ModelIdentifier {
  const ModelIdentifier({
    required this.id,
    this.system,
    this.version,
  });
  final String id;
  final String? system;
  final String? version;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ModelIdentifier) return false;
    return other.id == id && other.system == system && other.version == version;
  }

  @override
  int get hashCode => Object.hash(id, system, version);

  @override
  String toString() {
    return 'ModelIdentifier(id: $id, system: $system, version: $version)';
  }

  ModelIdentifier copyWith({
    String? id,
    String? system,
    String? version,
  }) =>
      ModelIdentifier(
        id: id ?? this.id,
        system: system ?? this.system,
        version: version ?? this.version,
      );
}
