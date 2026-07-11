import 'package:cql/src/internal.dart';

/// Represents a bound parameter type specifier.
///
/// The [BoundParameterTypeSpecifier] type defines a type replacing a class parameter,
/// including the parameter name, bound type, and elementTypeSpecifier.
class BoundParameterTypeSpecifier extends TypeSpecifierExpression {
  BoundParameterTypeSpecifier({
    required this.parameterName,
    required this.boundType,
    this.elementTypeSpecifier,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory BoundParameterTypeSpecifier.fromJson(Map<String, dynamic> json) {
    return BoundParameterTypeSpecifier(
      parameterName: json['parameterName'] as String,
      boundType: json['boundType'] as String,
      elementTypeSpecifier: json['elementTypeSpecifier'] != null
          ? TypeSpecifierExpression.fromJson(
              json['elementTypeSpecifier'] as Map<String, dynamic>)
          : null,
      annotation: json['annotation'] != null
          ? (json['annotation'] as List)
              .map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
      localId: json['localId'] as String?,
      locator: json['locator'] as String?,
      resultTypeName: json['resultTypeName'] as String?,
      resultTypeSpecifier: json['resultTypeSpecifier'] != null
          ? TypeSpecifierExpression.fromJson(
              json['resultTypeSpecifier'] as Map<String, dynamic>)
          : null,
    );
  }

  /// Type bound to the parameter.
  String boundType;

  /// Element type specifier.
  TypeSpecifierExpression? elementTypeSpecifier;

  /// Name of the parameter bound to a valid type.
  String parameterName;

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'parameterName': parameterName,
      'boundType': boundType,
    };

    if (elementTypeSpecifier != null) {
      data['elementTypeSpecifier'] = elementTypeSpecifier!.toJson();
    }

    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }

    if (localId != null) {
      data['localId'] = localId;
    }

    if (locator != null) {
      data['locator'] = locator;
    }

    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    return data;
  }

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'BoundParameterTypeSpecifier';
}
