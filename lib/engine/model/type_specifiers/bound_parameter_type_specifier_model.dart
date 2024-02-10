import '../../../cql.dart';

/// Represents a bound parameter type specifier.
///
/// The [BoundParameterTypeSpecifier] type defines a type replacing a class parameter,
/// including the parameter name, bound type, and elementTypeSpecifier.
class BoundParameterTypeSpecifierModel extends TypeSpecifierModel {
  /// Type bound to the parameter.
  String boundType;

  /// Element type specifier.
  TypeSpecifierModel? elementTypeSpecifier;

  /// Name of the parameter bound to a valid type.
  String parameterName;

  BoundParameterTypeSpecifierModel({
    required this.parameterName,
    required this.boundType,
    this.elementTypeSpecifier,
  });
}
