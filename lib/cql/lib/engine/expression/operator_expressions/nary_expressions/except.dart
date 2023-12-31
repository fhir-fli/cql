import '../../../../cql.dart';

/// Except operator returns the set difference of the two arguments.
/// This operator has two overloads: List, List and Interval, Interval.
/// For the list overload, returns a list with elements from the first operand not in the second, using equality semantics, with null elements considered equal. The operator is defined with set semantics.
/// For the interval overload, returns the portion of the first interval that does not overlap with the second. If the second argument is properly contained within the first and does not start or end it, returns null.
/// If the first argument is null, the result is null. If the second argument is null, the operation is performed as though the second argument was an empty list.
class Except extends NaryExpression {
  Except({super.operand});

  factory Except.fromJson(Map<String, dynamic> json) => Except(
      operand: (json['operand'] as List)
          .map((e) => Expression.fromJson(e))
          .toList());

  @override
  String get type => 'Except';
}
