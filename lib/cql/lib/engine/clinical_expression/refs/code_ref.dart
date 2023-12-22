import '../../../cql.dart';

/// The CodeRef expression allows a previously defined code to be referenced
/// within an expression.
class CodeRef extends Ref {
  CodeRef({
    super.name,
    super.libraryName,
  }) : super(type: 'CodeRef');

  factory CodeRef.fromJson(Map<String, dynamic> json) {
    return CodeRef(
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
