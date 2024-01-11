import '../../cql.dart';

/// The Current expression returns the value of the object currently in scope.
/// It's an error to invoke the Current operator outside of a scoped operation.
class Current extends Expression {
  final String scope;

  Current({
    required this.scope,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Current.fromJson(Map<String, dynamic> json) =>
      Current(scope: json['scope']!);

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'scope': scope,
      };

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'Current';
}
