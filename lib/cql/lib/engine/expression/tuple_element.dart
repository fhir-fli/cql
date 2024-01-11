import '../../cql.dart';

/// Element within a Tuple expression providing the value of a specific element within a tuple literal expression.
class TupleElement extends Element {
  /// Name of the tuple element.
  String name;

  /// Value expression of the tuple element.
  Expression value;

  TupleElement({
    required this.value,
    required this.name,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory TupleElement.fromJson(Map<String, dynamic> json) => TupleElement(
        value: Expression.fromJson(json['value']),
        name: json['name'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'value': value.toJson(),
      };

  @override
  String toString() => toJson().toString();

  String get type => 'TupleElement';
}
