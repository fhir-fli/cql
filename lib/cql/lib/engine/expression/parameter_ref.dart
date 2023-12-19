import '../../cql.dart';


/// Expression allowing the value of a parameter to be referenced within an expression.
class ParameterRef extends Expression {
  /// Name of the referenced parameter.
  String name;

  /// Library name, optional.
  String? libraryName;

  ParameterRef({required this.name, this.libraryName});
}