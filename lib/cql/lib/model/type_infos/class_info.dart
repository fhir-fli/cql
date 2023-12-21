import '../../cql.dart';

class ClassInfo extends TypeInfo {
  final String? namespace;
  final String name;
  final String? identifier;
  final String? label;
  final String? description;
  final String? definition;
  final String? comment;
  final String? target;
  final bool retrievable;
  final String? primaryCodePath;
  final String? primaryValueSetPath;
  final List<TypeParameterInfo>? parameters;
  final List<ClassInfoElement>? elements;
  final List<RelationshipInfo>? contextRelationships;
  final List<RelationshipInfo>? targetContextRelationships;
  final List<SearchInfo>? searches;
  final List<ExpressionInfo>? inferenceExpressions;
  final List<ConstraintInfo>? constraints;
  final String type = 'ClassInfo';

  ClassInfo({
    this.namespace,
    required this.name,
    this.identifier,
    this.label,
    this.description,
    this.definition,
    this.comment,
    this.target,
    this.retrievable = false,
    this.primaryCodePath,
    this.primaryValueSetPath,
    this.parameters,
    this.elements,
    this.contextRelationships,
    this.targetContextRelationships,
    this.searches,
    this.inferenceExpressions,
    this.constraints,
  });

  factory ClassInfo.fromJson(Map<String, dynamic> json) {
    print('class info from json');
    return ClassInfo(
      namespace: json['namespace'],
      name: json['name'],
      identifier: json['identifier'],
      label: json['label'],
      description: json['description'],
      definition: json['definition'],
      comment: json['comment'],
      target: json['target'],
      retrievable: json['retrievable'] == true, // Cast to boolean
      primaryCodePath: json['primaryCodePath'],
      primaryValueSetPath: json['primaryValueSetPath'],
      parameters: json['parameters'] == null
          ? null
          : (json['parameters'] as List)
              .map((e) => TypeParameterInfo.fromJson(e))
              .toList(),
      elements: json['elements'] == null
          ? null
          : (json['elements'] as List)
              .map((e) => ClassInfoElement.fromJson(e))
              .toList(),
      contextRelationships: json['contextRelationships'] == null
          ? null
          : (json['contextRelationships'] as List)
              .map((e) => RelationshipInfo.fromJson(e))
              .toList(),
      targetContextRelationships: json['targetContextRelationships'] == null
          ? null
          : (json['targetContextRelationships'] as List)
              .map((e) => RelationshipInfo.fromJson(e))
              .toList(),
      searches: json['searches'] == null
          ? null
          : (json['searches'] as List)
              .map((e) => SearchInfo.fromJson(e))
              .toList(),
      inferenceExpressions: json['inferenceExpressions'] == null
          ? null
          : (json['inferenceExpressions'] as List)
              .map((e) => ExpressionInfo.fromJson(e))
              .toList(),
      constraints: json['constraints'] == null
          ? null
          : (json['constraints'] as List)
              .map((e) => ConstraintInfo.fromJson(e))
              .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{'type': type};
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
    if (description != null) {
      data['description'] = description;
    }
    if (definition != null) {
      data['definition'] = definition;
    }
    if (comment != null) {
      data['comment'] = comment;
    }
    if (target != null) {
      data['target'] = target;
    }
    data['retrievable'] = retrievable;
    if (primaryCodePath != null) {
      data['primaryCodePath'] = primaryCodePath;
    }
    if (primaryValueSetPath != null) {
      data['primaryValueSetPath'] = primaryValueSetPath;
    }
    if (parameters != null) {
      data['parameters'] = parameters!.map((e) => e.toJson()).toList();
    }
    if (elements != null) {
      data['elements'] = elements!.map((e) => e.toJson()).toList();
    }
    if (contextRelationships != null) {
      data['contextRelationships'] =
          contextRelationships!.map((e) => e.toJson()).toList();
    }
    if (targetContextRelationships != null) {
      data['targetContextRelationships'] =
          targetContextRelationships!.map((e) => e.toJson()).toList();
    }
    if (searches != null) {
      data['searches'] = searches!.map((e) => e.toJson()).toList();
    }
    if (inferenceExpressions != null) {
      data['inferenceExpressions'] =
          inferenceExpressions!.map((e) => e.toJson()).toList();
    }
    if (constraints != null) {
      data['constraints'] = constraints!.map((e) => e.toJson()).toList();
    }
    return data;
  }
}
