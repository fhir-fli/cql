import 'package:cql/src/internal.dart';

/// Represents a named type specifier, extending [TypeSpecifier].
///
/// The [NamedTypeSpecifier] type represents a named type, inheriting from
/// TypeSpecifier, defining modelName, namespace, and name attributes.
class NamedTypeSpecifier extends TypeSpecifierExpression {
  NamedTypeSpecifier({
    required this.namespace,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory NamedTypeSpecifier.fromFull(String full) => NamedTypeSpecifier(
        namespace: QName.parse(full),
      );

  factory NamedTypeSpecifier.fromJson(Map<String, dynamic> json) {
    final modelName = json['modelName'] as String?;
    final name = json['name'] as String?;
    return NamedTypeSpecifier(
      namespace: QName.parse(name ?? modelName ?? ''),
      annotation: json['annotation'] != null
          ? (json['annotation'] as List)
              .map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
      localId: json['localId'] as String?,
      locator: json['locator'] as String?,
      resultTypeName: json['resultTypeName'] as String?,
      resultTypeSpecifier: json['resultTypeSpecifier'] != null
          ? TypeSpecifierExpression.fromJson(
              json['resultTypeSpecifier'] as Map<String, dynamic>,
            )
          : null,
    )..modelName = modelName;
  }

  /// Legacy ELM `modelName` attribute, superseded by the qualified
  /// [namespace]. Retained so ELM documents that carry it round-trip
  /// faithfully; new code should use [namespace].
  String? modelName;

  /// Namespace of the type.
  QName namespace;

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'name': namespace.toJson(),
      'type': type,
    };

    if (modelName != null) {
      data['modelName'] = modelName;
    }

    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }

    if (localId != null) {
      data['localId'] = localId;
    }

    if (locator != null) {
      data['locator'] = locator;
    }

    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    return data;
  }

  @override
  String toString() => namespace.toString();

  @override
  String get type => 'NamedTypeSpecifier';
}
