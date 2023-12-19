import '../../cql.dart';

/// The CodeRef expression allows a previously defined code to be referenced
/// within an expression.
abstract class Ref extends Expression {
  /// The name of the code.
  String? name;

  /// The library name.
  String? libraryName;

  String? type;

  Ref({this.name, this.libraryName, this.type});

  factory Ref.fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'CodeRef':
        return CodeRef.fromJson(json);
      case 'ConceptRef':
        return ConceptRef.fromJson(json);
      case 'CodeSystemRef':
        return CodeSystemRef.fromJson(json);
      case 'ValueSetRef':
        return ValueSetRef.fromJson(json);
      default:
        throw ArgumentError('Invalid type: ${json['type']}');
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'name': name};
    if (libraryName != null) {
      json['libraryName'] = libraryName;
    }
    if (type != null) {
      json['type'] = type;
    }
    return json;
  }
}
