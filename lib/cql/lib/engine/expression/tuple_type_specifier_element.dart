import '../../cql.dart';

/// Represents an element within TupleTypeSpecifier.
///
/// The [TupleTypeSpecifierElement] type defines the name and type of a single element
/// within a TupleTypeSpecifier.
class TupleTypeSpecifierElement {
  /// Type of the element.
  TypeSpecifier elementType;

  /// Name of the element.
  String name;

  TupleTypeSpecifierElement({
    required this.elementType,
    required this.name,
  });

  factory TupleTypeSpecifierElement.fromJson(Map<String, dynamic> json) {
    return TupleTypeSpecifierElement(
      elementType: TypeSpecifier.fromJson(json['elementType']),
      name: json['name'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        'elementType': elementType.toJson(),
        'name': name,
      };
}
