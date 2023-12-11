import 'package:fhir/dstu2.dart';

import '../../../cql.dart';

/// Represents a named type specifier, extending [TypeSpecifier].
///
/// The [NamedTypeSpecifier] type represents a named type, inheriting from TypeSpecifier,
/// defining modelName, namespace, and name attributes.
class NamedTypeSpecifier extends TypeSpecifier {
  /// Deprecated model name attribute.
  String? modelName;

  /// Namespace of the type.
  String namespace;

  final String type = 'NamedTypeSpecifier';

  NamedTypeSpecifier({
    this.modelName,
    String? namespace,
  }) : this.namespace = namespace ??
            (resourceTypeFromStringMap.keys.contains(modelName)
                ? '{http://hl7.org/fhir}'
                : '{urn:hl7-org:elm-types:r1}');

  factory NamedTypeSpecifier.fromJson(Map<String, dynamic> json) {
    String? modelName;
    String? nameSpace = json['modelName'] as String?;

    if (nameSpace != null) {
      final List<String> nameList = nameSpace.split('}');
      modelName = nameList.removeLast();
      nameSpace = nameList.join('}');
    }
    return NamedTypeSpecifier(
      modelName: modelName,
      namespace: nameSpace,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': '{$namespace}${modelName != null ? modelName : ''}',
        'type': 'NamedTypeSpecifier',
      };
}
