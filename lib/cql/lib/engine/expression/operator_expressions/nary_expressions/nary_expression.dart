import '../../../../cql.dart';

/// Abstract base class for an expression that takes any number of arguments,
/// including zero.
abstract class NaryExpression extends OperatorExpression {
  /// List of expressions as operands, can be zero or more.
  List<Expression>? operand;

  NaryExpression({this.operand});

  factory NaryExpression.fromJson(Map<String, dynamic> json) =>
      json['type'] == 'Concatenate'
          ? Concatenate.fromJson(json)
          : json['type'] == 'Union'
              ? Union.fromJson(json)
              : json['type'] == 'Intersect'
                  ? Intersect.fromJson(json)
                  : json['type'] == 'Except'
                      ? Except.fromJson(json)
                      : json['type'] == 'Coalesce'
                          ? Coalesce.fromJson(json)
                          : throw StateError('Invalid type for NaryExpression');

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        if (operand != null) 'operand': operand!.map((e) => e.toJson()).toList()
      };

  @override
  String get type;
}
