import 'package:cql/src/internal.dart';

/// Represents a parameter type specifier.
///
/// The [ParameterTypeSpecifier] type specifies a generic class parameter,
/// including its parameter name.
class ParameterTypeSpecifierModel extends TypeSpecifierModel {
  ParameterTypeSpecifierModel({
    required String parameterName,
  }) : parameterName = QName.parse(parameterName);

  ParameterTypeSpecifierModel.fromJson(Map<String, dynamic> map)
      : parameterName = QName.parse(map['parameterName'] as String),
        super(type: 'ParameterTypeSpecifier');

  /// Name of the parameter.
  QName parameterName;

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': 'ParameterTypeSpecifier',
      'parameterName': parameterName.toString(),
    };
  }
}
