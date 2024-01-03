import '../../cql.dart';

/// The ReturnClause element defines the shape of the result set of the query.
class ReturnClause extends Element {
  final bool? distinct;
  final Expression expression;

  ReturnClause({
    required this.expression,
    this.distinct,
  });

  factory ReturnClause.fromJson(Map<String, dynamic> json) => ReturnClause(
        expression: Expression.fromJson(json['expression']),
        distinct: json['distinct'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'expression': expression.toJson(),
        if (distinct != null) 'distinct': distinct,
      };

  String get type => 'ReturnClause';
}
