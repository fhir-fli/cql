import '../../../cql.dart';

/// The ValueSetRef expression allows a previously defined named value set to be
/// referenced within an expression. Conceptually, referencing a value set
/// returns the expansion set for the value set as a list of codes.
class ValueSetRef extends Ref {
  bool preserve;

  ValueSetRef({required super.name, super.libraryName, this.preserve = true});

  factory ValueSetRef.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    if (name == null) {
      throw ArgumentError("JSON name cannot be null");
    }

    return ValueSetRef(
      name: name,
      libraryName: json['libraryName'],
      preserve: json['preserve'] ?? true,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'name': name};
    if (libraryName != null) {
      json['libraryName'] = libraryName;
    }
    json['preserve'] = preserve;
    json['type'] = type;
    return json;
  }

  @override
  String get type => 'ValueSetRef';
}
