import '../../../../cql.dart';

/// The SingletonFrom expression extracts a single element from the source list.
/// If the source list is empty, the result is null.
/// If the source list contains one element, that element is returned.
/// If the list contains more than one element, a run-time error is thrown.
/// If the source list is null, the result is null.
class SingletonFrom extends UnaryExpression {
  SingletonFrom({required super.operand});

  factory SingletonFrom.fromJson(Map<String, dynamic> json) =>
      SingletonFrom(operand: Expression.fromJson(json['operand']));

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type,
        'operand': operand.toJson(),
      };

  String get type => 'SingletonFrom';
}
