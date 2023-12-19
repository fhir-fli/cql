/// Element within ClassInfoElement type, deprecated.
///
/// The [ClassInfoElement] type specifies an element deprecated in favor of
/// the elementTypeSpecifier. It provides an option to define typeSpecifier
/// and elementTypeSpecifier elements along with attributes.
class ClassInfoElement {
  /// Specifies the name of the element.
  String name;

  /// DEPRECATED: Specifies the type of the element.
  String? type;

  /// Specifies the type of the element, replacing 'type' attribute.
  String? elementType;

  /// Specifies whether the element is prohibited.
  bool? prohibited;

  /// Indicates the starting index for a list-valued element is one.
  bool? oneBased;

  /// Specifies a path to access the value for this element in the representation.
  String? target;

  ClassInfoElement({
    required this.name,
    this.type,
    this.elementType,
    this.prohibited,
    this.oneBased,
    this.target,
  });

  factory ClassInfoElement.fromJson(Map<String, dynamic> json) {
    return ClassInfoElement(
      name: json['name'] as String,
      type: json['type'] as String?,
      elementType: json['elementType'] as String?,
      prohibited: json['prohibited'] as bool?,
      oneBased: json['oneBased'] as bool?,
      target: json['target'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    if (type != null) {
      data['type'] = type;
    }
    if (elementType != null) {
      data['elementType'] = elementType;
    }
    if (prohibited != null) {
      data['prohibited'] = prohibited;
    }
    if (oneBased != null) {
      data['oneBased'] = oneBased;
    }
    if (target != null) {
      data['target'] = target;
    }
    return data;
  }
}
