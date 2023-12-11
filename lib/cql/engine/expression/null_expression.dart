import '../../cql.dart';

/// Null operator returning a null or missing information marker.
class NullExpression extends Expression {
  final String type = 'Null';

  NullExpression();

  factory NullExpression.fromJson(Map<String, dynamic> json) =>
      NullExpression();

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{"type": "Null"};
}
