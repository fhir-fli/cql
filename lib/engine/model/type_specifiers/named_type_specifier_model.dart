import '../../../cql.dart';

/// Represents a named type specifier, extending [TypeSpecifier].
///
/// The [NamedTypeSpecifier] type represents a named type, inheriting from TypeSpecifier,
/// defining modelName, namespace, and name attributes.
class NamedTypeSpecifierModel extends TypeSpecifierModel {
  /// Deprecated model name attribute.
  @Deprecated('Use namespace instead')
  String? modelName;

  /// Namespace of the type.
  QName? namespace;

  String name;

  NamedTypeSpecifierModel({
    this.namespace,
    required this.name,
  });
}
