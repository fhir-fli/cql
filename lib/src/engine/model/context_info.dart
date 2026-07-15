import 'package:cql/src/internal.dart';

/// Defines an available context type for the model.
///
/// The [ContextInfo] type defines the available context types for the model,
/// specifying the context type name, key elements, and birthDateElement.
class ContextInfo {
  ContextInfo({
    required this.name,
    required this.contextType,
    this.keyElement,
    this.birthDateElement,
  });

  factory ContextInfo.fromJson(Map<String, dynamic> json) {
    return ContextInfo(
      name: json['name'] as String,
      contextType: NamedTypeSpecifier.fromJson(
        json['contextType'] as Map<String, dynamic>,
      ),
      keyElement: json['keyElement'] as String?,
      birthDateElement: json['birthDateElement'] as String?,
    );
  }
  // Optional attribute - Name of the birthDateElement for the context type
  final String? birthDateElement;

  // Required element - Type for the context
  final NamedTypeSpecifier contextType;

  // Optional attribute - Key elements for the context (unique identifier)
  final String? keyElement;

  // Required attribute - Name of the context (referenced in CQL)
  final String name;

  @override
  String toString() {
    return 'ContextInfo{name: $name, contextType: $contextType, '
        'keyElement: $keyElement, birthDateElement: $birthDateElement}';
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'keyElement': keyElement,
        'birthDateElement': birthDateElement,
        'contextType': contextType.toJson(),
      };
}
