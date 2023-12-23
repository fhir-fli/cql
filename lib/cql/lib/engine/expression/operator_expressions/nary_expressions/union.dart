import '../../../../cql.dart';

/// Union operator returns the union of its arguments.
/// This operator has two overloads: List, Interval.
/// For the list overload, this operator returns a list with all unique
/// elements from both arguments, using equality semantics, with null elements
/// considered equal. For the interval overload, this operator returns the
/// interval that starts at the earliest starting point in either argument and
/// ends at the latest starting point in either argument. If the arguments do
/// not overlap or meet, returns null. If either argument is null, the
/// operation is performed as though the argument was an empty list.
class Union extends NaryExpression {
  Union({super.operand});

  factory Union.fromJson(Map<String, dynamic> json) => Union(
      operand: (json['operand'] as List)
          .map((e) => Expression.fromJson(e))
          .toList());

  @override
  String get type => 'Union';
}
