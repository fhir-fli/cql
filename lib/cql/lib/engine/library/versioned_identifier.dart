import 'package:json_annotation/json_annotation.dart';

part 'versioned_identifier.g.dart';

/// This file defines the root library type and element.
@JsonSerializable()
class VersionedIdentifier {
  /// VersionedIdentifier is composed of three parts:
  /// (1) an optional system, or namespace, which provides a globally unique, stable scope for the identifier,
  /// (2) an identifier which identifies the set of all versions of a given resource, and
  /// (3) the actual version of the instance of interest in this set.
  ///
  /// The VersionedIdentifier therefore points to an individual 'versioned' instance of a resource such as the third
  /// version of a library.
  String? id;

  /// An optional system (or namespace) which provides a globally unique, stable scope for the identifier.
  String? system;

  /// The actual version of the instance of interest in this set.
  String? version;

  VersionedIdentifier({this.id, this.system, this.version});

  factory VersionedIdentifier.fromJson(Map<String, dynamic> json) =>
      _$VersionedIdentifierFromJson(json);

  Map<String, dynamic> toJson() => _$VersionedIdentifierToJson(this);
}
