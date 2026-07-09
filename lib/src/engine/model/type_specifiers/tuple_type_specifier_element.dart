import 'package:cql/src/internal.dart';

/// Represents an element within TupleTypeSpecifier.
///
/// The [TupleTypeSpecifierElement] type defines the name and type of a single element
/// within a TupleTypeSpecifier.
class TupleTypeSpecifierElement {
  TupleTypeSpecifierElement({
    required this.elementType,
    required this.name,
  });

  TupleTypeSpecifierElement.fromJson(Map<String, dynamic> map)
      : elementType = TypeSpecifierModel.fromJson(map['elementType']),
        name = map['name'];

  /// Type of the element.
  TypeSpecifierModel elementType;

  /// Name of the element.
  String name;

  Map<String, dynamic> toJson() {
    return {
      'elementType': elementType.toJson(),
      'name': name,
    };
  }
}
