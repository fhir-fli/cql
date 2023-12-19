import '../../cql.dart';

/// TupleElementDefinition defines the name and type of a single element within a TupleTypeSpecifier.
class TupleElementDefinition extends Element {
  /// This element is deprecated. New implementations should use the new elementType element.
  TypeSpecifier? type;

  /// The type of the tuple element.
  TypeSpecifier? elementType;

  /// The name of the tuple element.
  String? name;

  TupleElementDefinition({
    this.type,
    this.elementType,
    this.name,
  });

  factory TupleElementDefinition.fromJson(Map<String, dynamic> json) =>
      TupleElementDefinition(
        type:
            json['type'] != null ? TypeSpecifier.fromJson(json['type']) : null,
        elementType: json['elementType'] != null
            ? TypeSpecifier.fromJson(json['elementType'])
            : null,
        name: json['name'],
      );

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (elementType != null) {
      json['elementType'] = elementType!.toJson();
    }
    if (name != null) {
      json['name'] = name;
    }
    return json;
  }
}
