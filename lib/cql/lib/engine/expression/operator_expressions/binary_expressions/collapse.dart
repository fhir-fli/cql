import '../../../../cql.dart';

/// Operator to get the unique set of intervals that completely cover the ranges present in the given list of intervals.
/// Adjacent intervals within a sorted list are merged if they either overlap or meet.
/// The operation combines successive intervals in the input that either overlap or meet.
/// If the per argument is null, it's constructed based on the coarsest precision of the boundaries of the intervals in the input set.
/// If the list of intervals is empty, the result is empty. If the list contains a single interval, the result is a list with that interval.
/// If the list contains nulls, they will be excluded from the resulting list.
/// If the source argument is null, the result is null.
class Collapse extends BinaryExpression {
  Collapse({required super.operand, super.isList = true});

  factory Collapse.fromJson(Map<String, dynamic> json) {
    List<Expression> operand = [];
    if (json['operand'] is List) {
      operand = List<Expression>.from(
          json['operand'].map((x) => Expression.fromJson(x)));
    } else if (json['operand'] is Map) {
      operand = [Expression.fromJson(json['operand'])];
    }
    return Collapse(operand: operand);
  }

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'operand': operand.map((x) => x.toJson()).toList(),
      };

  @override
  String get type => 'Collapse';
}
