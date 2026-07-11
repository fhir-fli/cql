import 'package:cql/src/internal.dart';

/// Represents a bound parameter type specifier.
///
/// The [BoundParameterTypeSpecifier] type defines a type replacing a class parameter,
/// including the parameter name, bound type, and elementTypeSpecifier.
class BoundParameterTypeSpecifierModel extends TypeSpecifierModel {
  BoundParameterTypeSpecifierModel({
    required this.parameterName,
    required this.boundType,
    this.elementTypeSpecifier,
  });

  BoundParameterTypeSpecifierModel.fromJson(Map<String, dynamic> map)
      : parameterName = map['parameterName'] as String,
        boundType = map['boundType'] as String,
        elementTypeSpecifier = map['elementTypeSpecifier'] != null
            ? TypeSpecifierModel.fromJson(
                map['elementTypeSpecifier'] as Map<String, dynamic>,
              )
            : null,
        super(type: 'BoundParameterTypeSpecifier');

  /// Type bound to the parameter.
  String boundType;

  /// Element type specifier.
  TypeSpecifierModel? elementTypeSpecifier;

  /// Name of the parameter bound to a valid type.
  String parameterName;

  @override
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{
      'type': 'BoundParameterTypeSpecifier',
      'parameterName': parameterName,
      'boundType': boundType,
    };
    if (elementTypeSpecifier != null) {
      map['elementTypeSpecifier'] = elementTypeSpecifier!.toJson();
    }
    return map;
  }
}
