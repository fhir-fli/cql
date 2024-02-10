import '../../../cql.dart';

/// Represents a parameter type specifier.
///
/// The [ParameterTypeSpecifier] type specifies a generic class parameter,
/// including its parameter name.
class ParameterTypeSpecifierModel extends TypeSpecifierModel {
  /// Name of the parameter.
  QName parameterName;

  ParameterTypeSpecifierModel({
    required String parameterName,
  }) : parameterName = QName.fromFull(parameterName);
}
