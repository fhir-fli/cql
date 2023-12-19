import '../../cql.dart';


/// TupleElementDefinition defines the name and type of a single element within a TupleTypeSpecifier.
class TupleElementDefinition extends Element {
  /// This element is deprecated. New implementations should use the new elementType element.
  TypeSpecifier? type;

  /// The type of the tuple element.
  TypeSpecifier? elementType;

  /// The name of the tuple element.
  String? name;
}