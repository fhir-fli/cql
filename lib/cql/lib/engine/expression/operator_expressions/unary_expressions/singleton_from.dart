import '../../../../cql.dart';

/// The SingletonFrom expression extracts a single element from the source list.
/// If the source list is empty, the result is null.
/// If the source list contains one element, that element is returned.
/// If the list contains more than one element, a run-time error is thrown.
/// If the source list is null, the result is null.
class SingletonFrom extends UnaryExpression {
  SingletonFrom({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory SingletonFrom.fromJson(Map<String, dynamic> json) =>
      SingletonFrom(operand: Expression.fromJson(json['operand']));

  @override
  String get type => 'SingletonFrom';
}
