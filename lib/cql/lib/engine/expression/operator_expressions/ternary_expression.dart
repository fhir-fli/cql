import '../../../cql.dart';

/// Abstract base class for expressions that take three arguments.
abstract class TernaryExpression extends OperatorExpression {
  /// List of expressions as operands.
  final List<Expression> operands;

  TernaryExpression({required this.operands});

  factory TernaryExpression.fromJson(Map<String, dynamic> json) =>
      TernaryExpression(operands: json['operands']!);

  @override
  Map<String, dynamic> toJson() => {
        'operands': operands,
      };
}
