import '../../../../cql.dart';

/// The Distinct operator returns a list containing only the unique elements within the input list.
/// The operator uses equality comparison semantics as defined in the Equal operator.
/// Nulls are considered equal for the purposes of distinct determination.
/// If the source argument is null, the result is null.
class Distinct extends UnaryExpression {
  Distinct({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Distinct.fromJson(Map<String, dynamic> json) =>
      Distinct(operand: Expression.fromJson(json['operand']!));

  @override
  String get type => 'Distinct';
}
