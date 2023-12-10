import 'package:json_annotation/json_annotation.dart';

import '../../../cql.dart';

part 'list_type_specifier.g.dart';

/// Represents a list type specifier, extending [TypeSpecifier].
///
/// The [ListTypeSpecifier] type represents a list type, inheriting from TypeSpecifier,
/// including an elementTypeSpecifier element and elementType attribute.
@JsonSerializable()
class ListTypeSpecifier extends TypeSpecifier {
  /// Element type specifier.
  TypeSpecifier? elementTypeSpecifier;

  /// Element type as a string.
  String? elementType;

  final String type = 'ListType';

  ListTypeSpecifier({this.elementTypeSpecifier, this.elementType});

  factory ListTypeSpecifier.fromJson(Map<String, dynamic> json) =>
      _$ListTypeSpecifierFromJson(json);

  Map<String, dynamic> toJson() => _$ListTypeSpecifierToJson(this);
}
