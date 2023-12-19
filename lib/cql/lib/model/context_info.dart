import '../cql.dart';

/// Defines an available context type for the model.
///
/// The [ContextInfo] type defines the available context types for the model,
/// specifying the context type name, key elements, and birthDateElement.
class ContextInfo {
  // Required attribute - Name of the context (referenced in CQL)
  final String name;

  // Required element - Type for the context
  final NamedTypeSpecifier contextType;

  // Optional attribute - Key elements for the context (unique identifier)
  final String? keyElement;

  // Optional attribute - Name of the birthDateElement for the context type
  final String? birthDateElement;

  ContextInfo({
    required this.name,
    required this.contextType,
    this.keyElement,
    this.birthDateElement,
  });

  factory ContextInfo.fromJson(Map<String, dynamic> json) {
    return ContextInfo(
      name: json['name'],
      contextType: json['contextType'],
      keyElement: json['keyElement'],
      birthDateElement: json['birthDateElement'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'contextType': contextType,
        'keyElement': keyElement,
        'birthDateElement': birthDateElement,
      };

  @override
  String toString() {
    return 'ContextInfo{name: $name, contextType: $contextType, keyElement: $keyElement, birthDateElement: $birthDateElement}';
  }
}
