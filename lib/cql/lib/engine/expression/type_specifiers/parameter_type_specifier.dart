import '../../../cql.dart';

/// Represents a parameter type specifier.
///
/// The [ParameterTypeSpecifier] type specifies a generic class parameter,
/// including its parameter name.
class ParameterTypeSpecifier extends TypeSpecifier {
  /// Name of the parameter.
  QName parameterName;

  @override
  final String type = 'ParameterTypeSpecifier';

  ParameterTypeSpecifier({required String parameterName})
      : parameterName = QName.fromFull(parameterName);

  factory ParameterTypeSpecifier.fromJson(Map<String, dynamic> json) {
    final parameterName = json['parameterName'] as String? ?? '';
    return ParameterTypeSpecifier(parameterName: parameterName);
  }
  @override
  Map<String, dynamic> toJson() => {
        'parameterName': parameterName.toString(),
        'type': type,
      };
}
