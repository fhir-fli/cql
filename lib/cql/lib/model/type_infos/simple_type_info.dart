import '../../cql.dart';

/// Represents a simple type, extending [TypeInfo].
///
/// The [SimpleTypeInfo] type represents a simple type, extending [TypeInfo],
/// containing namespace and name attributes.
class SimpleTypeInfo extends TypeInfo {
  /// Namespace of the type.
  String? namespace;

  /// Unqualified name of the type within this model.
  String name;

  SimpleTypeInfo({
    required this.name,
    this.namespace,
    super.baseType,
  });

  factory SimpleTypeInfo.fromJson(Map<String, dynamic> json) {
    return SimpleTypeInfo(
      name: json['name'] as String,
      namespace: json['namespace'] as String?,
      baseType: json['baseType'] as String?,
    );
  }

  String get type => 'SimpleTypeInfo';

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{'type': type};
    data['name'] = name;
    if (baseType != null) {
      data['baseType'] = baseType;
    }
    if (namespace != null) {
      data['namespace'] = namespace;
    }
    return data;
  }
}
