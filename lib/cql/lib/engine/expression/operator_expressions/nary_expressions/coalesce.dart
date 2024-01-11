import '../../../../cql.dart';

/// Coalesce operator returning the first non-null result in a list of arguments.
class Coalesce extends NaryExpression {
  Coalesce({
    super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Coalesce.fromJson(Map<String, dynamic> json) => Coalesce(
      operand: (json['operand'] as List)
          .map((e) => Expression.fromJson(e))
          .toList());

  @override
  String get type => 'Coalesce';
}
