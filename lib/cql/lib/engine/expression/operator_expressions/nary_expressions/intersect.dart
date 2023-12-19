import '../../../../cql.dart';

/// Intersect operator returns the intersection of its arguments.
/// This operator has two overloads: List, Interval.
/// For the list overload, returns a list with the elements that appear in both lists using equality semantics. Null elements are considered equal for intersection purposes. The operator is defined with set semantics.
/// For the interval overload, returns the interval that defines the overlapping portion of both arguments. If the arguments do not overlap, returns null.
/// If either argument is null, the result is null.
class Intersect extends NaryExpression {
  @override
  final String type = 'Intersect';
  Expression left;
  Expression right;

  Intersect({required this.left, required this.right});

  factory Intersect.fromJson(Map<String, dynamic> json) => Intersect(
      left: Expression.fromJson(json['left']),
      right: Expression.fromJson(json['right']));

  @override
  Map<String, dynamic> toJson() => {'type': type, 'left': left, 'right': right};
}
