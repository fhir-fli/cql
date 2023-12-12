import 'package:json_annotation/json_annotation.dart';

import '../../cql.dart';

part 'tuple_type_specifier_element.g.dart';

/// Represents an element within TupleTypeSpecifier.
///
/// The [TupleTypeSpecifierElement] type defines the name and type of a single element
/// within a TupleTypeSpecifier.
@JsonSerializable()
class TupleTypeSpecifierElement {
  /// Type of the element.
  TypeSpecifier elementType;

  /// Name of the element.
  String name;

  TupleTypeSpecifierElement({
    required this.elementType,
    required this.name,
  });

  factory TupleTypeSpecifierElement.fromJson(Map<String, dynamic> json) =>
      _$TupleTypeSpecifierElementFromJson(json);

  Map<String, dynamic> toJson() => _$TupleTypeSpecifierElementToJson(this);
}
