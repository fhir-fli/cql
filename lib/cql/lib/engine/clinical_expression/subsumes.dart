import '../../cql.dart';

/// The Subsumes operator returns true if the given codes are equivalent, or if
/// the first code subsumes the second (i.e. the first code is an ancestor of
/// the second in a subsumption hierarchy), and false otherwise.
///
/// For the Concept overload, this operator returns true if any code in the first
/// concept subsumes any code in the second.
///
/// If either or both arguments are null, the result is null.
class Subsumes extends BinaryExpression {
  Subsumes({required super.operand});

  factory Subsumes.fromJson(Map<String, dynamic> json) => Subsumes(
        operand: (json['operand']! as List)
            .map((e) => Expression.fromJson(e))
            .toList(),
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'operand': operand,
      };

  @override
  String toString() => toJson().toString();

  String get type => 'Subsumes';
}
