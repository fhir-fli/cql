/// Represents a model specifier.
///
/// The [ModelSpecifier] type specifies a model with attributes for name and version.
class ModelSpecifier {
  /// Name of the model.
  String name;

  /// Version of the model.
  String? version;

  ModelSpecifier({
    required this.name,
    this.version,
  });

  factory ModelSpecifier.fromJson(Map<String, dynamic> json) {
    return ModelSpecifier(
      name: json['name'] as String,
      version: json['version'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    if (version != null) {
      data['version'] = version;
    }
    return data;
  }
}
