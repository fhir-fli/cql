import '../../../cql.dart';

/// The CodeSystemRef expression allows a previously defined named code system to
/// be referenced within an expression. Conceptually, referencing a code system
/// returns the set of codes in the code system. Note that this operation should
/// almost never be performed in practice. Code system references are allowed in
/// order to allow for testing of code membership in a particular code system.
class CodeSystemRef extends Ref {
  CodeSystemRef({required super.name, super.libraryName});

  factory CodeSystemRef.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    if (name == null) {
      throw ArgumentError("JSON name cannot be null");
    }

    return CodeSystemRef(
      name: name,
      libraryName: json['libraryName'],
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        if (libraryName != null) 'libraryName': libraryName,
      };

  @override
  String get type => 'CodeSystemRef';
}
