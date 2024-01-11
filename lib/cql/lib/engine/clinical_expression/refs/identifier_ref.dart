import '../../../cql.dart';

/// Expression that references an unresolved or resolved identifier.
class IdentifierRef extends Ref {
  IdentifierRef({
    required super.name,
    super.libraryName,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory IdentifierRef.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    if (name == null) {
      throw ArgumentError("JSON name cannot be null");
    }

    return IdentifierRef(
      name: name,
      libraryName: json['libraryName'],
    );
  }

  @override
  String get type => 'IdentifierRef';
}
