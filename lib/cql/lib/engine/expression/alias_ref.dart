import '../../cql.dart';

/// The AliasRef expression allows for the reference of a specific source within the scope of a query.
class AliasRef extends Expression {
  final String name;

  AliasRef({required this.name});

  factory AliasRef.fromJson(Map<String, dynamic> json) =>
      AliasRef(name: json['name']!);

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
      };
}
