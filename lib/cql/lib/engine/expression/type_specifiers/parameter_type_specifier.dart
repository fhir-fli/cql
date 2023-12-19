import '../../../cql.dart';

/// Represents a parameter type specifier.
///
/// The [ParameterTypeSpecifier] type specifies a generic class parameter,
/// including its parameter name.
class ParameterTypeSpecifier extends TypeSpecifier {
  /// Name of the parameter.
  QName name;

  @override
  final String type = 'ParameterType';

  ParameterTypeSpecifier({required String name}) : name = QName.fromFull(name);

  factory ParameterTypeSpecifier.fromJson(Map<String, dynamic> json) {
    final name = json['name'] as String;
    return ParameterTypeSpecifier(name: name);
  }
  @override
  Map<String, dynamic> toJson() => {
        'name': name.toString(),
        'type': type,
      };
}
