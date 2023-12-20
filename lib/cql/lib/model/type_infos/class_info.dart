import '../../cql.dart';

/// Models information associated with a single class in the data model.
///
/// The [ClassInfo] type captures data related to a class in the data model,
/// extending [TypeInfo] and incorporating additional elements and attributes.
class ClassInfo extends TypeInfo {
  /// Namespace of the class.
  String? namespace;

  /// Specifies the name of the type within the data model.
  String name;

  /// Specifies a unique name for the class that may be independent of the name.
  String? identifier;

  /// User-friendly identifier for the class in CQL.
  String? label;

  /// Specifies if the class can be used within a retrieve statement.
  bool? retrievable;

  /// Specifies the path for code filtering when a retrieve doesn't specify a code path.
  String? primaryCodePath;

  /// Specifies the path for alternative value set matching when source data lacks a code.
  String? primaryValueSetPath;

  ClassInfo({
    required this.name,
    this.namespace,
    this.identifier,
    this.label,
    this.retrievable,
    this.primaryCodePath,
    this.primaryValueSetPath,
  });

  factory ClassInfo.fromJson(Map<String, dynamic> json) {
    return ClassInfo(
      namespace: json['namespace'] as String?,
      name: json['name'] as String,
      identifier: json['identifier'] as String?,
      label: json['label'] as String?,
      retrievable: json['retrievable'] as bool?,
      primaryCodePath: json['primaryCodePath'] as String?,
      primaryValueSetPath: json['primaryValueSetPath'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (namespace != null) {
      data['namespace'] = namespace;
    }
    data['name'] = name;
    if (identifier != null) {
      data['identifier'] = identifier;
    }
    if (label != null) {
      data['label'] = label;
    }
    if (retrievable != null) {
      data['retrievable'] = retrievable;
    }
    if (primaryCodePath != null) {
      data['primaryCodePath'] = primaryCodePath;
    }
    if (primaryValueSetPath != null) {
      data['primaryValueSetPath'] = primaryValueSetPath;
    }
    return data;
  }
}
