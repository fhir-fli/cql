/// Defines an available context type for the model.
///
/// The [ContextInfo] type defines the available context types for the model,
/// specifying the context type name, key elements, and birthDateElement.
class ContextInfo {
  /// Specifies the name of the context.
  String name;

  /// Specifies the key elements forming the reference key.
  String? keyElement;

  /// Specifies the name of the birthDateElement.
  String? birthDateElement;

  ContextInfo({
    required this.name,
    this.keyElement,
    this.birthDateElement,
  });
}
