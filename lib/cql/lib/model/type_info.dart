import '../cql.dart';

/// An abstract type containing a base type specifier element.
///
/// The [TypeInfo] abstract type serves as a base for other types,
/// containing a baseTypeSpecifier element and baseType attribute.
abstract class TypeInfo {
  /// Base type specifier element.
  TypeSpecifier? baseTypeSpecifier;

  /// Base type as a string.
  String? baseType;

  TypeInfo({
    this.baseTypeSpecifier,
    this.baseType,
  });
}
