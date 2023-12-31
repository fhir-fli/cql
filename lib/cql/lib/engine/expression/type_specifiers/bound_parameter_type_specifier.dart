import '../../../cql.dart';

/// Represents a bound parameter type specifier.
///
/// The [BoundParameterTypeSpecifier] type defines a type replacing a class parameter,
/// including the parameter name, bound type, and elementTypeSpecifier.
class BoundParameterTypeSpecifier extends TypeSpecifier {
  /// Type bound to the parameter.
  String boundType;

  /// Element type specifier.
  TypeSpecifier? elementTypeSpecifier;

  /// Name of the parameter bound to a valid type.
  String parameterName;

  BoundParameterTypeSpecifier({
    required this.parameterName,
    required this.boundType,
    this.elementTypeSpecifier,
  });

  factory BoundParameterTypeSpecifier.fromJson(Map<String, dynamic> json) {
    return BoundParameterTypeSpecifier(
      parameterName: json['parameterName'] as String,
      boundType: json['boundType'] as String,
      elementTypeSpecifier: json['elementTypeSpecifier'] != null
          ? TypeSpecifier.fromJson(json['elementTypeSpecifier'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'parameterName': parameterName,
        'boundType': boundType,
        if (elementTypeSpecifier != null)
          'elementTypeSpecifier': elementTypeSpecifier!.toJson(),
      };

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'BoundParameterTypeSpecifier';
}
