import 'package:cql/src/internal.dart';

/// Represents information related to a profile, extending [ClassInfo].
///
/// The [ProfileInfo] type represents details regarding a profile,
/// inheriting from ClassInfo.
class ProfileInfo extends ClassInfo {
  ProfileInfo({
    required super.name,
    super.namespace,
    super.baseType,
    super.identifier,
    super.label,
    super.description,
    super.definition,
    super.comment,
    super.target,
    super.retrievable = false,
    super.primaryCodePath,
    super.primaryValueSetPath,
    super.parameter,
    super.singleParameter,
    super.element,
    super.singleElement,
    super.contextRelationship,
    super.singleContextRelationship,
    super.targetContextRelationship,
    super.singleTargetContextRelationship,
    super.search,
    super.singleSearch,
    super.inferenceExpression,
    super.singleInferenceExpression,
    super.constraint,
    super.singleConstraint,
  });

  factory ProfileInfo.fromJson(Map<String, dynamic> json) {
    return ProfileInfo(
      namespace: json['namespace'] as String?,
      name: json['name'] as String,
      baseType: json['baseType'] as String?,
      identifier: json['identifier'] as String?,
      label: json['label'] as String?,
      description: json['description'] as String?,
      definition: json['definition'] as String?,
      comment: json['comment'] as String?,
      target: json['target'] as String?,
      retrievable: json['retrievable'] is bool
          ? json['retrievable'] as bool
          : json['retrievable'] == 'true',
      primaryCodePath: json['primaryCodePath'] as String?,
      primaryValueSetPath: json['primaryValueSetPath'] as String?,
      parameter: json['parameter'] as List<TypeParameterInfo>?,
      singleParameter: json['singleParameter'] as bool?,
      element: json['element'] as List<ClassInfoElement>?,
      singleElement: json['singleElement'] as bool?,
      contextRelationship:
          json['contextRelationship'] as List<RelationshipInfo>?,
      singleContextRelationship: json['singleContextRelationship'] as bool?,
      targetContextRelationship:
          json['targetContextRelationship'] as List<RelationshipInfo>?,
      singleTargetContextRelationship:
          json['singleTargetContextRelationship'] as bool?,
      search: json['search'] as List<SearchInfo>?,
      singleSearch: json['singleSearch'] as bool?,
      inferenceExpression: json['inferenceExpression'] as List<ExpressionInfo>?,
      singleInferenceExpression: json['singleInferenceExpression'] as bool?,
      constraint: json['constraint'] as List<ConstraintInfo>?,
      singleConstraint: json['singleConstraint'] as bool?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      if (namespace != null) 'namespace': namespace,
      'name': name,
      if (baseType != null) 'baseType': baseType,
      if (identifier != null) 'identifier': identifier,
      if (label != null) 'label': label,
      if (description != null) 'description': description,
      if (definition != null) 'definition': definition,
      if (comment != null) 'comment': comment,
      if (target != null) 'target': target,
      'retrievable': retrievable,
      if (primaryCodePath != null) 'primaryCodePath': primaryCodePath,
      if (primaryValueSetPath != null)
        'primaryValueSetPath': primaryValueSetPath,
      if (parameter != null) 'parameter': parameter,
      if (singleParameter != null) 'singleParameter': singleParameter,
      if (element != null) 'element': element,
      if (singleElement != null) 'singleElement': singleElement,
      if (contextRelationship != null)
        'contextRelationship': contextRelationship,
      if (singleContextRelationship != null)
        'singleContextRelationship': singleContextRelationship,
      if (targetContextRelationship != null)
        'targetContextRelationship': targetContextRelationship,
      if (singleTargetContextRelationship != null)
        'singleTargetContextRelationship': singleTargetContextRelationship,
      if (search != null) 'search': search,
      if (singleSearch != null) 'singleSearch': singleSearch,
      if (inferenceExpression != null)
        'inferenceExpression': inferenceExpression,
      if (singleInferenceExpression != null)
        'singleInferenceExpression': singleInferenceExpression,
      if (constraint != null) 'constraint': constraint,
      if (singleConstraint != null) 'singleConstraint': singleConstraint,
    };
  }

  @override
  String get type => 'ProfileInfo';
}
