import '../../../cql.dart';

/// Represents a list type specifier, extending [TypeSpecifier].
///
/// The [ListTypeSpecifier] type represents a list type, inheriting from TypeSpecifier,
/// including an elementType element and elementType attribute.

class ListTypeSpecifierModel extends TypeSpecifierModel {
  /// Element type specifier.
  TypeSpecifierModel? elementTypeSpecifier;

  String? elementType;

  ListTypeSpecifierModel({
    this.elementTypeSpecifier,
    this.elementType,
  });
}
