import 'package:json_annotation/json_annotation.dart';

/// Specifies binding information for an element
class BindingInfo {
  // Optional attribute - Formal name for the binding
  final String? name;

  // Optional attribute - User-friendly description of the binding
  final String? description;

  // Required attribute - Strength of the binding
  final BindingStrength strength;

  // Required attribute - Target value set for the binding
  final Uri valueSet;

  BindingInfo({
    required this.strength,
    required this.valueSet,
    this.name,
    this.description,
  });

  factory BindingInfo.fromJson(Map<String, dynamic> json) {
    return BindingInfo(
      name: json['name'],
      description: json['description'],
      strength:
          bindingStrengthFromJson(json['strength']) ?? BindingStrength.example,
      valueSet: json['valueSet'] == null ? Uri() : Uri.parse(json['valueSet']),
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'strength': strength.toJson(),
        'valueSet': valueSet.toString(),
      };

  @override
  String toString() {
    return 'BindingInfo{name: $name, description: $description, strength: $strength, valueSet: $valueSet}';
  }
}

/// The BindingStrength type describes possible strengths of a binding
/// specification, Required, Extensible, Preferred, and Example.
enum BindingStrength {
  @JsonValue('Required')
  required,
  @JsonValue('Extensible')
  extensible,
  @JsonValue('Preferred')
  preferred,
  @JsonValue('Example')
  example,
}

extension BindingStrengthJson on BindingStrength {
  String toJson() {
    switch (this) {
      case BindingStrength.required:
        return 'Required';
      case BindingStrength.extensible:
        return 'Extensible';
      case BindingStrength.preferred:
        return 'Preferred';
      case BindingStrength.example:
        return 'Example';
    }
  }
}

BindingStrength? bindingStrengthFromJson(String? json) {
  if (json == null) return null;

  switch (json) {
    case 'Required':
      return BindingStrength.required;
    case 'Extensible':
      return BindingStrength.extensible;
    case 'Preferred':
      return BindingStrength.preferred;
    case 'Example':
      return BindingStrength.example;
  }
  throw ArgumentError('Invalid BindingStrength value: $json');
}
