import '../../../cql.dart';

/// Represents an element within TupleTypeSpecifier.
///
/// The [TupleTypeSpecifierElement] type defines the name and type of a single element
/// within a TupleTypeSpecifier.
class TupleTypeSpecifierElement {
  /// Type of the element.
  TypeSpecifierModel elementType;

  /// Name of the element.
  String name;

  TupleTypeSpecifierElement({
    required this.elementType,
    required this.name,
  });
}
