import '../../../cql.dart';

/// Expression allowing the value of a parameter to be referenced within an expression.
class ParameterRef extends Ref {
  ParameterRef({required super.name, super.libraryName});

  factory ParameterRef.fromJson(Map<String, dynamic> json) {
    return ParameterRef(name: json['name'], libraryName: json['libraryName']);
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {'name': name};
    if (libraryName != null) {
      json['libraryName'] = libraryName;
    }
    return json;
  }
}
