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

  NamedTypeSpecifier({
    required this.namespace,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory NamedTypeSpecifier.fromFull(String full) => NamedTypeSpecifier(
        namespace: QName.fromFull(full),
      );

  factory NamedTypeSpecifier.fromJson(Map<String, dynamic> json) {
    String? modelName = json['modelName'] as String?;
    String? name = json['name'] as String?;
    return NamedTypeSpecifier(
      namespace: QName.fromFull(name ?? modelName ?? ''),
      annotation: json['annotation'] != null
          ? (json['annotation'] as List)
              .map((e) => CqlToElmBase.fromJson(e))
              .toList()
          : null,
      localId: json['localId'],
      locator: json['locator'],
      resultTypeName: json['resultTypeName'],
      resultTypeSpecifier: json['resultTypeSpecifier'] != null
          ? TypeSpecifier.fromJson(json['resultTypeSpecifier'])
          : null,
    )..modelName = modelName;
  }

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        if (modelName != null) 'modelName': modelName,
        'name': namespace.toJson(),
        'type': type,
      };

  @override
  String toString() => namespace.toString();

  @override
  String get type => 'NamedTypeSpecifier';
}
