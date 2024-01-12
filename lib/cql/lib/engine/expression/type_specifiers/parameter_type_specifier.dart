import '../../../cql.dart';

/// Represents a parameter type specifier.
///
/// The [ParameterTypeSpecifier] type specifies a generic class parameter,
/// including its parameter name.
class ParameterTypeSpecifier extends TypeSpecifier {
  /// Name of the parameter.
  QName parameterName;

  ParameterTypeSpecifier({
    required String parameterName,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  }) : parameterName = QName.fromFull(parameterName);

  factory ParameterTypeSpecifier.fromJson(Map<String, dynamic> json) {
    final parameterName = json['parameterName'] as String? ?? '';
    return ParameterTypeSpecifier(
      parameterName: parameterName,
      annotation: json['annotation'] != null
          ? (json['annotation'] as List)
              .map((e) => CqlToElmBase.fromJson(e))
              .toList()
          : null,
      localId: json['localId'],
      locator: json['locator'],
      resultTypeName: json['resultTypeName'],
      resultTypeSpecifier: json['resultTypeSpecifier'] != null
          ? TypeSpecifier.fromJson(json['resultTypeSpecifier'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'parameterName': parameterName.toString(),
      };

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'ParameterTypeSpecifier';
}
