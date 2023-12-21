import '../../../cql.dart';

/// Represents a named type specifier, extending [TypeSpecifier].
///
/// The [NamedTypeSpecifier] type represents a named type, inheriting from TypeSpecifier,
/// defining modelName, namespace, and name attributes.
class NamedTypeSpecifier extends TypeSpecifier {
  /// Deprecated model name attribute.
  @Deprecated('Use namespace instead')
  String? modelName;

  /// Namespace of the type.
  QName namespace;

  @override
  final String type = 'NamedTypeSpecifier';

  NamedTypeSpecifier({required this.namespace});

  factory NamedTypeSpecifier.fromFull(String full) => NamedTypeSpecifier(
        namespace: QName.fromFull(full),
      );

  factory NamedTypeSpecifier.fromJson(Map<String, dynamic> json) {
    String? modelName = json['modelName'] as String?;
    String? name = json['name'] as String?;
    return NamedTypeSpecifier(
      namespace: QName.fromFull(name ?? modelName ?? ''),
    )..modelName = modelName;
  }

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type,
        if (modelName != null) 'modelName': modelName,
        'name': namespace.toJson(),
      };
}
