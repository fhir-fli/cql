import 'package:cql/src/internal.dart';

/// Specifies binding information for an element
class BindingInfo {
  BindingInfo({
    required this.strength,
    required this.valueSet,
    this.name,
    this.description,
  });

  factory BindingInfo.fromJson(Map<String, dynamic> json) {
    return BindingInfo(
      name: json['name'] as String?,
      description: json['description'] as String?,
      strength: bindingStrengthFromJson(json['strength'] as String?) ??
          BindingStrength.example,
      valueSet: json['valueSet'] == null
          ? Uri()
          : Uri.parse(json['valueSet'] as String),
    );
  }
  // Optional attribute - User-friendly description of the binding
  final String? description;

  // Optional attribute - Formal name for the binding
  final String? name;

  // Required attribute - Strength of the binding
  final BindingStrength strength;

  // Required attribute - Target value set for the binding
  final Uri valueSet;

  @override
  String toString() {
    return 'BindingInfo{name: $name, description: $description, '
        'strength: $strength, valueSet: $valueSet}';
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'strength': strength.toJson(),
        'valueSet': valueSet.toString(),
      };
}
