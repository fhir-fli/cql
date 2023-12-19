import '../../cql.dart';

/// The Expression type defines the abstract base type for all expressions used in the ELM expression language.
class Expression extends Element {
  Expression();

  //TODO(Dokotela): add all constructors
  factory Expression.fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    switch (type) {
      /// Expression Refs
      case 'ExpressionRef':
        return ExpressionRef.fromJson(json);
      default:
        throw ArgumentError('Invalid type: $type');
    }
  }
}
