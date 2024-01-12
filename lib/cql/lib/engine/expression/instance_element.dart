import '../../cql.dart';

/// Instance element used within an Instance expression.
class InstanceElement extends Element {
  /// Required name of the instance element.
  String name;

  /// Value expression of the instance element.
  Expression value;

  InstanceElement({
    required this.name,
    required this.value,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory InstanceElement.fromJson(Map<String, dynamic> json) =>
      InstanceElement(
        name: json['name'],
        value: Expression.fromJson(json['value']),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'],
        locator: json['locator'],
        resultTypeName: json['resultTypeName'],
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifier.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'value': value.toJson(),
    };
  }

  @override
  String toString() => toJson().toString();

  String get type => 'InstanceElement';
}
