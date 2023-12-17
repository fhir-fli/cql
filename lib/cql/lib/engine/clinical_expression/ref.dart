import '../../cql.dart';

/// The CodeRef expression allows a previously defined code to be referenced
/// within an expression.
class Ref extends Expression {
  /// The name of the code.
  String? name;

  /// The library name.
  String? libraryName;

  String? type;

  Ref({this.name, this.libraryName, this.type});

  factory Ref.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    if (name == null) {
      throw ArgumentError("JSON name cannot be null");
    }

    return Ref(
      name: name,
      libraryName: json['libraryName'],
      type: json['type'],
    );
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
