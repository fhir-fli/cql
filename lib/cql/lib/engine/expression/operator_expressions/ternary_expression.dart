import '../../../cql.dart';

/// Abstract base class for expressions that take three arguments.
abstract class TernaryExpression extends OperatorExpression {
  /// List of expressions as operands.
  final List<Expression> operands;

  TernaryExpression({
    required this.operands,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory TernaryExpression.fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    switch (type) {
      case 'ReplaceMatches':
        return ReplaceMatches.fromJson(json);
      default:
        throw ArgumentError('Invalid type: $type');
    }
  }

  @override
  Map<String, dynamic> toJson();
}
