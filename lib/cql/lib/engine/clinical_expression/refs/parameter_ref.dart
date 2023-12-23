import '../../../cql.dart';

/// Expression allowing the value of a parameter to be referenced within an expression.
class ParameterRef extends Ref {
  ParameterRef({required super.name, super.libraryName});

  factory ParameterRef.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    if (name == null) {
      throw ArgumentError("JSON name cannot be null");
    }

    return ParameterRef(
      name: name,
      libraryName: json['libraryName'],
    );
  }

  @override
  String get type => 'ParameterRef';
}
