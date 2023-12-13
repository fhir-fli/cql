import '../../cql.dart';

/// The ConceptRef expression allows a previously defined concept to be
/// referenced within an expression.
class ConceptRef extends Ref {
  ConceptRef({super.name, super.libraryName}) : super(type: 'CodeRef');

  factory ConceptRef.fromJson(Map<String, dynamic> json) {
    return ConceptRef(
      name: json['name'] as String?,
      libraryName: json['libraryName'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (name != null) {
      json['name'] = name;
    }
    if (libraryName != null) {
      json['libraryName'] = libraryName;
    }
    json['type'] = type;
    return json;
  }
}
