import '../../../../cql.dart';

/// Abstract base class for expressions that take two arguments.
abstract class BinaryExpression extends OperatorExpression {
  /// List of expressions as operands.
  List<Expression> operands;

  BinaryExpression({required this.operands});

  factory BinaryExpression.fromJson(Map<String, dynamic> json) =>
      BinaryExpression(operands: json['operands']!);

  @override
  Map<String, dynamic> toJson() => {
        'operands': operands,
      };
}
