import '../../cql.dart';

/// The ValueSetRef expression allows a previously defined named value set to be
/// referenced within an expression. Conceptually, referencing a value set
/// returns the expansion set for the value set as a list of codes.
class ValueSetRef extends Expression {
  /// The name of the value set.
  String name;

  /// The library name.
  String? libraryName;

  bool preserve;

  final String type = 'ValueSetRef';

  ValueSetRef({required this.name, this.libraryName, this.preserve = true});

  factory ValueSetRef.fromJson(Map<String, dynamic> json) => ValueSetRef(
        name: json['name'] as String,
        libraryName: json['libraryName'] as String?,
        preserve: json['preserve'] as bool? ?? true,
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{
      'name': name,
      'preserve': preserve,
      'type': type,
    };
    if (libraryName != null) {
      json['libraryName'] = libraryName;
    }
    return json;
  }
}