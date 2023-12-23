import '../../../../cql.dart';

/// Coalesce operator returning the first non-null result in a list of arguments.
class Coalesce extends NaryExpression {
  Coalesce({super.operand});

  factory Coalesce.fromJson(Map<String, dynamic> json) => Coalesce(
      operand: (json['operand'] as List)
          .map((e) => Expression.fromJson(e))
          .toList());

  @override
  String get type => 'Coalesce';
}
