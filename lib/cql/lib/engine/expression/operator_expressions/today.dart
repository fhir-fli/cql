import '../../../cql.dart';

/// Operator to return the date (with no time component) of the start timestamp associated with the evaluation request.
class Today extends OperatorExpression {
  Today();

  factory Today.fromJson(Map<String, dynamic> json) => Today();

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
      };

  @override
  String get type => 'Today';
}
