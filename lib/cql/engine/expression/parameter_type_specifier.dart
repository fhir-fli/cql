import 'package:json_annotation/json_annotation.dart';

import '../../cql.dart';

part 'parameter_type_specifier.g.dart';

/// Represents a parameter type specifier.
///
/// The [ParameterTypeSpecifier] type specifies a generic class parameter,
/// including its parameter name.
@JsonSerializable()
class ParameterTypeSpecifier extends TypeSpecifier {
  /// Name of the parameter.
  String parameterName;

  final String type = 'ParameterType';

  ParameterTypeSpecifier({required this.parameterName});

  factory ParameterTypeSpecifier.fromJson(Map<String, dynamic> json) =>
      _$ParameterTypeSpecifierFromJson(json);

  Map<String, dynamic> toJson() => _$ParameterTypeSpecifierToJson(this);
}
