import '../../cql.dart';

/// Represents an element within a case operator, specifying conditions and their corresponding actions.
class CaseItem extends Element {
  /// Condition to evaluate.
  final Expression when;

  /// Action to perform if the condition is met.
  final Expression then;

  CaseItem({required this.when, required this.then});

  factory CaseItem.fromJson(Map<String, dynamic> json) => CaseItem(
        when: json['when']!,
        then: json['then']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'when': when,
        'then': then,
      };
}
