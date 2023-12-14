import '../../cql.dart';

/// Abstract base class for an expression that takes any number of arguments,
/// including zero.
abstract class NaryExpression extends OperatorExpression {
  String get type;

  /// List of expressions as operands, can be zero or more.
  List<Expression>? operands;

  NaryExpression({this.operands});

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
        if (operands != null)
          'operands': operands!.map((e) => e.toJson()).toList()
      };
}
