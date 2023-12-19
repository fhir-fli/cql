import '../../cql.dart';


/// Expression allowing tuples of any type to be built up as an expression.
class Tuple extends Expression {
  /// List of tuple elements specifying values for the elements of the tuple.
  List<TupleElement>? element;

  Tuple({this.element});
}