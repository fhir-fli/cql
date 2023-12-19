import '../../cql.dart';

/// The QueryLetRef expression allows for the reference of a specific let definition within the scope of a query.
class QueryLetRef extends Expression {
  final String name;

  QueryLetRef({required this.name});

  factory QueryLetRef.fromJson(Map<String, dynamic> json) =>
      QueryLetRef(name: json['name']);

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {'name': name};
    return json;
  }

  @override
  String toString() {
    return 'QueryLetRef{name: $name}';
  }
}
