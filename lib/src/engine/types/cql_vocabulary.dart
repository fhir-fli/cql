// Vocabulary type
import 'package:cql/src/internal.dart';
import 'package:meta/meta.dart';

/// The CQL `Vocabulary` type: the common base for terminology definitions
/// referenced by a library.
///
/// A vocabulary is identified by its canonical [id], carries an optional
/// [version], and has a local [name] by which CQL expressions refer to it. It
/// is the abstract parent of the concrete terminology kinds — [CqlCodeSystem]
/// and [CqlValueSet]. Two vocabularies are [equivalent] on matching id and
/// version, and [equal] when id, version and name all match.
@immutable
abstract class CqlVocabulary implements CqlType {
  /// Creates a vocabulary with the given canonical [id], [version] and local
  /// [name].
  CqlVocabulary({
    required this.id,
    required this.version,
    required this.name,
  });

  factory CqlVocabulary.fromJson() {
    throw UnimplementedError(
      'Vocabulary is an abstract class and cannot be instantiated directly.',
    );
  }
  final String id;
  final String? version;
  final String name;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'version': version,
      'name': name,
    };
  }

  @override
  bool equivalent(Object other) {
    if (other is CqlVocabulary) {
      return id == other.id && version == other.version;
    } else {
      return false;
    }
  }

  @override
  bool equal(Object other) {
    if (other is CqlVocabulary) {
      return id == other.id && version == other.version && name == other.name;
    } else {
      return false;
    }
  }

  @override
  String toString() {
    return 'Vocabulary { id: $id, version: $version, name: $name }';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    } else {
      return other is CqlVocabulary &&
          other.id == id &&
          other.version == version &&
          other.name == name;
    }
  }

  @override
  int get hashCode {
    return id.hashCode ^ version.hashCode ^ name.hashCode;
  }
}
