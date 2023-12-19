import '../../cql.dart';

/// The Current expression returns the value of the object currently in scope.
/// It's an error to invoke the Current operator outside of a scoped operation.
class Current extends Expression {
  Current({required this.scope});

  final String scope;

  factory Current.fromJson(Map<String, dynamic> json) =>
      Current(scope: json['scope']!);

  @override
  Map<String, dynamic> toJson() => {
        'scope': scope,
      };
}
