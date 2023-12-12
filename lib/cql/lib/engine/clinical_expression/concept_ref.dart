import '../../cql.dart';

/// The ConceptRef expression allows a previously defined concept to be
/// referenced within an expression.
class ConceptRef extends Expression {
  /// The name of the concept.
  late String? name;

  /// The library name.
  late String? libraryName;

  ConceptRef({this.name, this.libraryName});
}
