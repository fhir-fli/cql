import '../../../../cql.dart';

/// Coalesce operator returning the first non-null result in a list of arguments.
class Coalesce extends NaryExpression {
  @override
  final String type = 'Coalesce';
  Expression left;
  Expression right;

  Coalesce({required this.left, required this.right});

  factory Coalesce.fromJson(Map<String, dynamic> json) => Coalesce(
      left: Expression.fromJson(json['left']),
      right: Expression.fromJson(json['right']));

  @override
  Map<String, dynamic> toJson() => {'type': type, 'left': left, 'right': right};
}
