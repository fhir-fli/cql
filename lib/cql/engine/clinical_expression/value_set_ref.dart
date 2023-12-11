import '../../cql.dart';

/// The ValueSetRef expression allows a previously defined named value set to be
/// referenced within an expression. Conceptually, referencing a value set
/// returns the expansion set for the value set as a list of codes.
class ValueSetRef extends Expression {
  /// The name of the value set.
  late String? name;

  /// The library name.
  late String? libraryName;

  ValueSetRef({this.name, this.libraryName});
}
