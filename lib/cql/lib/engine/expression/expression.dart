import '../../cql.dart';

/// The Expression type defines the abstract base type for all expressions used in the ELM expression language.
class Expression extends Element {
  Expression();

  factory Expression.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson();
}
