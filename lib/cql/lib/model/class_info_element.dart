import '../cql.dart';

/// Element within ClassInfoElement type, deprecated.
///
/// The [ClassInfoElement] type specifies an element deprecated in favor of
/// the elementTypeSpecifier. It provides an option to define typeSpecifier
/// and elementTypeSpecifier elements along with attributes.
@Deprecated(
    'This element is deprecated. New implementations should use the new elementTypeSpecifier element')
class ClassInfoElement {
  // Deprecated element
  final TypeSpecifier? typeSpecifier;

  // Element type specifier
  final TypeSpecifier? elementTypeSpecifier;

  // Binding information
  final BindingInfo? binding;

  // Constraints list
  final List<ConstraintInfo> constraints = [];

  // Required attribute - Name of the element
  final String name;

  // Optional attribute - Deprecated type attribute
  final String? type;

  // Optional attribute - Element type
  final String? elementType;

  // Optional attribute - Whether the element is prohibited
  final bool? prohibited;

  // Optional attribute - Whether the list-valued element is one-based
  final bool? oneBased;

  // Optional attribute - Access path for the element
  final String? target;

  // Optional attribute - User-friendly label for the element
  final String? label;

  // Optional attribute - Short description of the element
  final String? description;

  // Optional attribute - Detailed markdown definition of the element
  final String? definition;

  // Optional attribute - Additional markdown comments on the element
  final String? comment;

  // Optional attribute - Minimum cardinality of the element
  final int? min;

  // Optional attribute - Maximum cardinality of the element
  final String? max;

  // Optional attribute - Whether the element is relevant for the use case
  final bool? mustSupport;

  ClassInfoElement({
    required this.name,
    this.typeSpecifier,
    this.elementTypeSpecifier,
    this.binding,
    this.type,
    this.elementType,
    this.prohibited,
    this.oneBased,
    this.target,
    this.label,
    this.description,
    this.definition,
    this.comment,
    this.min,
    this.max,
    this.mustSupport,
  });

  factory ClassInfoElement.fromJson(Map<String, dynamic> json) {
    final name = json['name'] as String;
    final typeSpecifier = json['typeSpecifier'] != null
        ? TypeSpecifier.fromJson(json['typeSpecifier'])
        : null;
    final elementTypeSpecifier = json['elementTypeSpecifier'] != null
        ? TypeSpecifier.fromJson(json['elementTypeSpecifier'])
        : null;
    final binding =
        json['binding'] != null ? BindingInfo.fromJson(json['binding']) : null;
    final type = json['type'] as String?;
    final elementType = json['elementType'] as String?;
    final prohibited = json['prohibited'] is bool
        ? json['prohibited'] as bool
        : json['prohibited'] is String
            ? json['prohibited'] == 'true'
                ? true
                : json['prohibited'] == 'false'
                    ? false
                    : null
            : null;
    final oneBased = json['oneBased'] as bool?;
    final target = json['target'] as String?;
    final label = json['label'] as String?;
    final description = json['description'] as String?;
    final definition = json['definition'] as String?;
    final comment = json['comment'] as String?;
    final min = json['min'] as int?;
    final max = json['max'] as String?;
    final mustSupport = json['mustSupport'] is bool
        ? json['mustSupport'] as bool
        : json['mustSupport'] is String
            ? json['mustSupport'] == 'true'
                ? true
                : json['mustSupport'] == 'false'
                    ? false
                    : null
            : null;

    return ClassInfoElement(
      name: name,
      typeSpecifier: typeSpecifier,
      elementTypeSpecifier: elementTypeSpecifier,
      binding: binding,
      type: type,
      elementType: elementType,
      prohibited: prohibited,
      oneBased: oneBased,
      target: target,
      label: label,
      description: description,
      definition: definition,
      comment: comment,
      min: min,
      max: max,
      mustSupport: mustSupport,
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        if (typeSpecifier != null) 'typeSpecifier': typeSpecifier!.toJson(),
        if (elementTypeSpecifier != null)
          'elementTypeSpecifier': elementTypeSpecifier!.toJson(),
        if (binding != null) 'binding': binding!.toJson(),
        if (type != null) 'type': type,
        if (elementType != null) 'elementType': elementType,
        if (prohibited != null) 'prohibited': prohibited,
        if (oneBased != null) 'oneBased': oneBased,
        if (target != null) 'target': target,
        if (label != null) 'label': label,
        if (description != null) 'description': description,
        if (definition != null) 'definition': definition,
        if (comment != null) 'comment': comment,
        if (min != null) 'min': min,
        if (max != null) 'max': max,
        if (mustSupport != null) 'mustSupport': mustSupport,
      };

  void addConstraint(ConstraintInfo constraint) {
    constraints.add(constraint);
  }

  @override
  String toString() {
    return 'ClassInfoElement{name: $name, typeSpecifier: $typeSpecifier, elementTypeSpecifier: $elementTypeSpecifier, binding: $binding, constraints: $constraints, type: $type, elementType: $elementType, prohibited: $prohibited, oneBased: $oneBased, target: $target, label: $label, description: $description, definition: $definition, comment: $comment, min: $min, max: $max, mustSupport: $mustSupport}';
  }
}
