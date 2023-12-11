import '../../cql.dart';

/// Represents a named type specifier, extending [TypeSpecifier].
///
/// The [NamedTypeSpecifier] type represents a named type, inheriting from TypeSpecifier,
/// defining modelName, namespace, and name attributes.
class NamedTypeSpecifier extends TypeSpecifier {
  /// Deprecated model name attribute.
  @deprecated
  String? modelName;

  /// Namespace of the type.
  QName namespace;

  final String type = 'NamedTypeSpecifier';

  NamedTypeSpecifier({required this.namespace});

  factory NamedTypeSpecifier.fromFull(String full) => NamedTypeSpecifier(
        namespace: QName.fromFull(full),
      );

  factory NamedTypeSpecifier.fromJson(Map<String, dynamic> json) {
    String? nameSpace = json['modelName'] as String?;
    return NamedTypeSpecifier(
      namespace: QName.fromFull(nameSpace),
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': namespace.toJson(),
        'type': 'NamedTypeSpecifier',
      };
}
