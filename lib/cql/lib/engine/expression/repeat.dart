import '../../cql.dart';


/// The Repeat expression performs successive ForEach until no new elements are returned.
/// It uses equality comparison semantics as defined in the Equal operator.
/// If the source argument is null, the result is null.
/// If the element argument evaluates to null for some item in the source list, the resulting list will contain a null for that element.
class Repeat extends Expression {
  Repeat({
    required Expression source,
    required Expression element,
    required this.scope,
  });

  final String scope;
}