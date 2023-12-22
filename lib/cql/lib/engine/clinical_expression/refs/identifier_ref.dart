import '../../../cql.dart';

/// Expression that references an unresolved or resolved identifier.
class IdentifierRef extends Ref {
  IdentifierRef({required super.name, super.libraryName});

  factory IdentifierRef.fromJson(Map<String, dynamic> json) {
    return IdentifierRef(name: json['name'], libraryName: json['libraryName']);
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {'name': name};
    if (libraryName != null) {
      json['libraryName'] = libraryName;
    }
    return json;
  }

  @override
  String toString() => 'IdentifierRef: name: $name libraryName: $libraryName';
}
