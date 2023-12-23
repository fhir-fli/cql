import '../../../cql.dart';

/// Expression that references a previously defined NamedExpression.
class ExpressionRef extends Ref {
  ExpressionRef({required super.name, super.libraryName});

  factory ExpressionRef.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    if (name == null) {
      throw ArgumentError("JSON name cannot be null");
    }

    return ExpressionRef(
      name: name,
      libraryName: json['libraryName'],
    );
  }

  @override
  String get type => 'ExpressionRef';
}
