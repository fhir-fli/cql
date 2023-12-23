import '../../../cql.dart';

/// The CodeRef expression allows a previously defined code to be referenced
/// within an expression.
abstract class Ref extends Expression {
  /// The name of the code.
  String name;

  /// The library name.
  String? libraryName;

  Ref({required this.name, this.libraryName});

  factory Ref.fromJson(Map<String, dynamic> json) {
    print(json);
    switch (json['type']) {
      case 'CodeRef':
        return CodeRef.fromJson(json);
      case 'ConceptRef':
        return ConceptRef.fromJson(json);
      case 'CodeSystemRef':
        return CodeSystemRef.fromJson(json);
      case 'ValueSetRef':
        return ValueSetRef.fromJson(json);
      case 'ParameterRef':
        return ParameterRef.fromJson(json);
      case 'ExpressionRef':
        return ExpressionRef.fromJson(json);
      case 'FunctionRef':
        return FunctionRef.fromJson(json);
      case 'IdentifierRef':
        return IdentifierRef.fromJson(json);
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
    json['type'] = type;
    return json;
  }

  @override
  String toString() => toJson().toString();

  String get type;
}
