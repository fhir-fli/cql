import '../../cql.dart';


/// The QueryLetRef expression allows for the reference of a specific let definition within the scope of a query.
class QueryLetRef extends Expression {
  QueryLetRef({required this.name});

  final String name;
}