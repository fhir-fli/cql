import '../../../../cql.dart';

/// Operator to perform string concatenation of its arguments.
/// If any argument is null, the result is null.
class Concatenate extends NaryExpression {
  Expression left;
  Expression right;

  @override
  final String type = 'Concatenate';

  Concatenate({required this.left, required this.right});

  factory Concatenate.fromJson(Map<String, dynamic> json) => Concatenate(
      left: Expression.fromJson(json['left']),
      right: Expression.fromJson(json['right']));

  @override
  Map<String, dynamic> toJson() => {'type': type, 'left': left, 'right': right};
}
