import '../../../cql.dart';

/// Represents a tuple type specifier.
///
/// The [TupleTypeSpecifier] type defines the possible elements of a tuple.
class TupleTypeSpecifierModel extends TypeSpecifierModel {
  /// Elements within TupleTypeSpecifier.
  List<TupleTypeSpecifierElement>? element;

  TupleTypeSpecifierModel({this.element});
}
