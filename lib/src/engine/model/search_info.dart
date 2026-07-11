import 'package:cql/src/internal.dart';

class SearchInfo {
  SearchInfo({
    required this.name,
    required this.path,
    this.typeSpecifier,
    this.type,
    this.label,
    this.description,
    this.definition,
    this.comment,
  });

  factory SearchInfo.fromJson(Map<String, dynamic> json) {
    return SearchInfo(
      typeSpecifier: json['typeSpecifier'] != null
          ? TypeSpecifierModel.fromJson(
              json['typeSpecifier'] as Map<String, dynamic>,
            )
          : null,
      name: json['name'] as String,
      path: json['path'] as String,
      type: json['type'] as String?,
      label: json['label'] as String?,
      description: json['description'] as String?,
      definition: json['definition'] as String?,
      comment: json['comment'] as String?,
    );
  }
  final String? comment;
  final String? definition;
  final String? description;
  final String? label;
  final String name;
  final String path;
  final String? type;
  final TypeSpecifierModel? typeSpecifier;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (typeSpecifier != null) {
      data['typeSpecifier'] = typeSpecifier!.toJson();
    }
    data['name'] = name;
    data['path'] = path;
    if (type != null) {
      data['type'] = type;
    }
    if (label != null) {
      data['label'] = label;
    }
    if (description != null) {
      data['description'] = description;
    }
    if (definition != null) {
      data['definition'] = definition;
    }
    if (comment != null) {
      data['comment'] = comment;
    }
    return data;
  }
}
