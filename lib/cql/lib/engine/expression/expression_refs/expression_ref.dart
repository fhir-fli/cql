import '../../../cql.dart';

/// Expression that references a previously defined NamedExpression.
class ExpressionRef extends Expression {
  /// Library name, optional.
  String? libraryName;

  /// Name of the referenced expression.
  String name;

  final String type = 'ExpressionRef';

  ExpressionRef({required this.name, this.libraryName});

  factory ExpressionRef.fromJson(Map<String, dynamic> json) =>
      ExpressionRef(name: json['name'], libraryName: json['libraryName']);

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {'name': name};
    if (libraryName != null) {
      json['libraryName'] = libraryName;
    }
    json['type'] = type;
    return json;
  }
}
