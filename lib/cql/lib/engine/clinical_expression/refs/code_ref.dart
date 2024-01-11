import '../../../cql.dart';

/// The CodeRef expression allows a previously defined code to be referenced
/// within an expression.
class CodeRef extends Ref {
  CodeRef({
    required super.name,
    super.libraryName,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory CodeRef.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    if (name == null) {
      throw ArgumentError("JSON name cannot be null");
    }

    return CodeRef(
      name: name,
      libraryName: json['libraryName'],
    );
  }

  @override
  String get type => 'CodeRef';
}
