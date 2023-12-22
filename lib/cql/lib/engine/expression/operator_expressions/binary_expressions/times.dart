import '../../../../cql.dart';

/// Times operator performs the cartesian product of two lists of tuples.
/// The return type of a Times operator is a tuple with all the components from the tuple types of both arguments.
/// If either argument is null, the result is null.
class Times extends BinaryExpression {
  Times({required super.operand});

  factory Times.fromJson(Map<String, dynamic> json) => Times(
        operand: (json['operand'] as List)
            .map((e) => Expression.fromJson(e))
            .toList(),
      );

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand.map((e) => e.toJson()).toList(),
      };
}
