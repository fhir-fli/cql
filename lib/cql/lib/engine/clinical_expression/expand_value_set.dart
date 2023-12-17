import '../../cql.dart';

/// The operation exoects a single argument of type ValueSet. This may be a
/// static reference to a value set (i.e. a ValueSetRef), or a ValueSet value
/// to support dynamic value set usage. The operation is used as the implicit
/// conversion from a ValueSet reference to a list of codes.
/// If the argument is null, the result is null.

class ExpandValueSet extends UnaryExpression {
  ExpandValueSet({required super.operand});

  factory ExpandValueSet.fromJson(Map<String, dynamic> json) =>
      ExpandValueSet(operand: Expression.fromJson(json['operand']));

  @override
  Map<String, dynamic> toJson() => {
        'operand': operand.toJson(),
      };
}
