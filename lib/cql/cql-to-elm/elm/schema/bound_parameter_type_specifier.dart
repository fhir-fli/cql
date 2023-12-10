import 'package:json_annotation/json_annotation.dart';

import '../../../cql.dart';

part 'bound_parameter_type_specifier.g.dart';

/// Represents a bound parameter type specifier.
///
/// The [BoundParameterTypeSpecifier] type defines a type replacing a class parameter,
/// including the parameter name, bound type, and elementTypeSpecifier.
@JsonSerializable()
class BoundParameterTypeSpecifier extends TypeSpecifier {
  /// Name of the parameter bound to a valid type.
  String parameterName;

  /// Type bound to the parameter.
  String boundType;

  /// Element type specifier.
  TypeSpecifier? elementTypeSpecifier;

  final String type = 'BoundParameterType';

  BoundParameterTypeSpecifier({
    required this.parameterName,
    required this.boundType,
    this.elementTypeSpecifier,
  });

  factory BoundParameterTypeSpecifier.fromJson(Map<String, dynamic> json) =>
      _$BoundParameterTypeSpecifierFromJson(json);

  Map<String, dynamic> toJson() => _$BoundParameterTypeSpecifierToJson(this);
}
