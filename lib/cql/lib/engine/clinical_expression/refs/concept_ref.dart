import '../../../cql.dart';

/// The ConceptRef expression allows a previously defined concept to be
/// referenced within an expression.
class ConceptRef extends Ref {
  ConceptRef({required super.name, super.libraryName});

  factory ConceptRef.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    if (name == null) {
      throw ArgumentError("JSON name cannot be null");
    }

    return ConceptRef(
      name: name,
      libraryName: json['libraryName'],
    );
  }

  @override
  String get type => 'ConceptRef';
}
