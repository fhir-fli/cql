// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContextInfo _$ContextInfoFromJson(Map<String, dynamic> json) => ContextInfo(
      contextType: json['contextType'] == null
          ? null
          : NamedTypeSpecifier.fromJson(
              json['contextType'] as Map<String, dynamic>),
      name: json['name'] as String?,
      keyElement: json['keyElement'] as String?,
      birthDateElement: json['birthDateElement'] as String?,
    );

Map<String, dynamic> _$ContextInfoToJson(ContextInfo instance) =>
    <String, dynamic>{
      'contextType': instance.contextType,
      'name': instance.name,
      'keyElement': instance.keyElement,
      'birthDateElement': instance.birthDateElement,
    };

RelationshipInfo _$RelationshipInfoFromJson(Map<String, dynamic> json) =>
    RelationshipInfo(
      context: json['context'] as String,
      relatedKeyElement: json['relatedKeyElement'] as String?,
    );

Map<String, dynamic> _$RelationshipInfoToJson(RelationshipInfo instance) =>
    <String, dynamic>{
      'context': instance.context,
      'relatedKeyElement': instance.relatedKeyElement,
    };

SearchInfo _$SearchInfoFromJson(Map<String, dynamic> json) => SearchInfo(
      typeSpecifier: json['typeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['typeSpecifier'] as Map<String, dynamic>),
      name: json['name'] as String?,
      path: json['path'] as String?,
      type: json['type'] as String?,
      label: json['label'] as String?,
      description: json['description'] as String?,
      definition: json['definition'] as String?,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$SearchInfoToJson(SearchInfo instance) =>
    <String, dynamic>{
      'typeSpecifier': instance.typeSpecifier,
      'name': instance.name,
      'path': instance.path,
      'type': instance.type,
      'label': instance.label,
      'description': instance.description,
      'definition': instance.definition,
      'comment': instance.comment,
    };

ModelInfo _$ModelInfoFromJson(Map<String, dynamic> json) => ModelInfo(
      requiredModelInfo: (json['requiredModelInfo'] as List<dynamic>?)
          ?.map((e) => ModelSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      typeInfo: (json['typeInfo'] as List<dynamic>?)
          ?.map((e) => TypeInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      conversionInfo: (json['conversionInfo'] as List<dynamic>?)
          ?.map((e) => ConversionInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      contextInfo: (json['contextInfo'] as List<dynamic>?)
          ?.map((e) => ContextInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      version: json['version'] as String?,
      url: json['url'] as String?,
      schemaLocation: json['schemaLocation'] as String?,
      patientClassName: json['patientClassName'] as String?,
      patientClassIdentifier: json['patientClassIdentifier'] as String?,
      patientBirthDatePropertyName:
          json['patientBirthDatePropertyName'] as String?,
      caseSensitive: json['caseSensitive'] as bool?,
      strictRetrieveTyping: json['strictRetrieveTyping'] as bool?,
    )
      ..targetUrl = json['targetUrl'] as String?
      ..targetVersion = json['targetVersion'] as String?
      ..targetQualifier = json['targetQualifier'] as String?
      ..caseSensitiveSpecified = json['caseSensitiveSpecified'] as bool?
      ..strictRetrieveTypingSpecified =
          json['strictRetrieveTypingSpecified'] as bool?
      ..defaultContext = json['defaultContext'] as String?;

Map<String, dynamic> _$ModelInfoToJson(ModelInfo instance) => <String, dynamic>{
      'requiredModelInfo': instance.requiredModelInfo,
      'typeInfo': instance.typeInfo,
      'conversionInfo': instance.conversionInfo,
      'contextInfo': instance.contextInfo,
      'name': instance.name,
      'version': instance.version,
      'url': instance.url,
      'targetUrl': instance.targetUrl,
      'targetVersion': instance.targetVersion,
      'schemaLocation': instance.schemaLocation,
      'targetQualifier': instance.targetQualifier,
      'patientClassName': instance.patientClassName,
      'patientClassIdentifier': instance.patientClassIdentifier,
      'patientBirthDatePropertyName': instance.patientBirthDatePropertyName,
      'caseSensitive': instance.caseSensitive,
      'caseSensitiveSpecified': instance.caseSensitiveSpecified,
      'strictRetrieveTyping': instance.strictRetrieveTyping,
      'strictRetrieveTypingSpecified': instance.strictRetrieveTypingSpecified,
      'defaultContext': instance.defaultContext,
    };

BindingInfo _$BindingInfoFromJson(Map<String, dynamic> json) => BindingInfo(
      name: json['name'] as String?,
      description: json['description'] as String?,
      strength: $enumDecodeNullable(_$BindingStrengthEnumMap, json['strength']),
      valueSet: json['valueSet'] as String?,
    );

Map<String, dynamic> _$BindingInfoToJson(BindingInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'strength': _$BindingStrengthEnumMap[instance.strength],
      'valueSet': instance.valueSet,
    };

const _$BindingStrengthEnumMap = {
  BindingStrength.required: 'Required',
  BindingStrength.extensible: 'Extensible',
  BindingStrength.preferred: 'Preferred',
  BindingStrength.example: 'Example',
};

ClassInfoElement _$ClassInfoElementFromJson(Map<String, dynamic> json) =>
    ClassInfoElement(
      typeSpecifier: json['typeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['typeSpecifier'] as Map<String, dynamic>),
      elementTypeSpecifier: json['elementTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['elementTypeSpecifier'] as Map<String, dynamic>),
      binding: json['binding'] == null
          ? null
          : BindingInfo.fromJson(json['binding'] as Map<String, dynamic>),
      constraint: (json['constraint'] as List<dynamic>?)
          ?.map((e) => ConstraintInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      elementType: json['elementType'] as String?,
      prohibited: json['prohibited'] as bool? ?? false,
      prohibitedSpecified: json['prohibitedSpecified'] as bool? ?? false,
      oneBased: json['oneBased'] as bool? ?? false,
      oneBasedSpecified: json['oneBasedSpecified'] as bool? ?? false,
      target: json['target'] as String?,
      label: json['label'] as String?,
      description: json['description'] as String?,
      definition: json['definition'] as String?,
      comment: json['comment'] as String?,
      min: json['min'] as int? ?? 0,
      minSpecified: json['minSpecified'] as bool? ?? false,
      max: json['max'] as String?,
      mustSupport: json['mustSupport'] as bool? ?? false,
      mustSupportSpecified: json['mustSupportSpecified'] as bool? ?? false,
    );

Map<String, dynamic> _$ClassInfoElementToJson(ClassInfoElement instance) =>
    <String, dynamic>{
      'typeSpecifier': instance.typeSpecifier,
      'elementTypeSpecifier': instance.elementTypeSpecifier,
      'binding': instance.binding,
      'constraint': instance.constraint,
      'name': instance.name,
      'type': instance.type,
      'elementType': instance.elementType,
      'prohibited': instance.prohibited,
      'prohibitedSpecified': instance.prohibitedSpecified,
      'oneBased': instance.oneBased,
      'oneBasedSpecified': instance.oneBasedSpecified,
      'target': instance.target,
      'label': instance.label,
      'description': instance.description,
      'definition': instance.definition,
      'comment': instance.comment,
      'min': instance.min,
      'minSpecified': instance.minSpecified,
      'max': instance.max,
      'mustSupport': instance.mustSupport,
      'mustSupportSpecified': instance.mustSupportSpecified,
    };

ExpressionInfo _$ExpressionInfoFromJson(Map<String, dynamic> json) =>
    ExpressionInfo(
      language: json['language'] as String?,
      expression: json['expression'] as String?,
    );

Map<String, dynamic> _$ExpressionInfoToJson(ExpressionInfo instance) =>
    <String, dynamic>{
      'language': instance.language,
      'expression': instance.expression,
    };

ConstraintInfo _$ConstraintInfoFromJson(Map<String, dynamic> json) =>
    ConstraintInfo(
      expression: (json['expression'] as List<dynamic>?)
          ?.map((e) => ExpressionInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      severity: json['severity'] as String?,
      description: json['description'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ConstraintInfoToJson(ConstraintInfo instance) =>
    <String, dynamic>{
      'expression': instance.expression,
      'name': instance.name,
      'severity': instance.severity,
      'description': instance.description,
      'message': instance.message,
    };

ClassInfo _$ClassInfoFromJson(Map<String, dynamic> json) => ClassInfo(
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map((e) => TypeParameterInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      element: (json['element'] as List<dynamic>?)
          ?.map((e) => ClassInfoElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      contextRelationship: (json['contextRelationship'] as List<dynamic>?)
          ?.map((e) => RelationshipInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      targetContextRelationship:
          (json['targetContextRelationship'] as List<dynamic>?)
              ?.map((e) => RelationshipInfo.fromJson(e as Map<String, dynamic>))
              .toList(),
      search: (json['search'] as List<dynamic>?)
          ?.map((e) => SearchInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      inferenceExpression: (json['inferenceExpression'] as List<dynamic>?)
          ?.map((e) => ExpressionInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      constraint: (json['constraint'] as List<dynamic>?)
          ?.map((e) => ConstraintInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      namespace: json['namespace'] as String?,
      name: json['name'] as String?,
      identifier: json['identifier'] as String?,
      label: json['label'] as String?,
      description: json['description'] as String?,
      definition: json['definition'] as String?,
      comment: json['comment'] as String?,
      target: json['target'] as String?,
      retrievable: json['retrievable'] as bool? ?? false,
      primaryCodePath: json['primaryCodePath'] as String?,
      primaryValueSetPath: json['primaryValueSetPath'] as String?,
    )
      ..baseTypeSpecifier = json['baseTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['baseTypeSpecifier'] as Map<String, dynamic>)
      ..baseType = json['baseType'] as String?;

Map<String, dynamic> _$ClassInfoToJson(ClassInfo instance) => <String, dynamic>{
      'baseTypeSpecifier': instance.baseTypeSpecifier,
      'baseType': instance.baseType,
      'parameter': instance.parameter,
      'element': instance.element,
      'contextRelationship': instance.contextRelationship,
      'targetContextRelationship': instance.targetContextRelationship,
      'search': instance.search,
      'inferenceExpression': instance.inferenceExpression,
      'constraint': instance.constraint,
      'namespace': instance.namespace,
      'name': instance.name,
      'identifier': instance.identifier,
      'label': instance.label,
      'description': instance.description,
      'definition': instance.definition,
      'comment': instance.comment,
      'target': instance.target,
      'retrievable': instance.retrievable,
      'primaryCodePath': instance.primaryCodePath,
      'primaryValueSetPath': instance.primaryValueSetPath,
    };

TypeInfo _$TypeInfoFromJson(Map<String, dynamic> json) => TypeInfo(
      baseTypeSpecifier: json['baseTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['baseTypeSpecifier'] as Map<String, dynamic>),
      baseType: json['baseType'] as String?,
    );

Map<String, dynamic> _$TypeInfoToJson(TypeInfo instance) => <String, dynamic>{
      'baseTypeSpecifier': instance.baseTypeSpecifier,
      'baseType': instance.baseType,
    };

SimpleTypeInfo _$SimpleTypeInfoFromJson(Map<String, dynamic> json) =>
    SimpleTypeInfo(
      namespace: json['namespace'] as String?,
      name: json['name'] as String?,
      target: json['target'] as String?,
    )
      ..baseTypeSpecifier = json['baseTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['baseTypeSpecifier'] as Map<String, dynamic>)
      ..baseType = json['baseType'] as String?;

Map<String, dynamic> _$SimpleTypeInfoToJson(SimpleTypeInfo instance) =>
    <String, dynamic>{
      'baseTypeSpecifier': instance.baseTypeSpecifier,
      'baseType': instance.baseType,
      'namespace': instance.namespace,
      'name': instance.name,
      'target': instance.target,
    };

IntervalTypeInfo _$IntervalTypeInfoFromJson(Map<String, dynamic> json) =>
    IntervalTypeInfo(
      pointTypeSpecifier: json['pointTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['pointTypeSpecifier'] as Map<String, dynamic>),
      pointType: json['pointType'] as String?,
    )
      ..baseTypeSpecifier = json['baseTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['baseTypeSpecifier'] as Map<String, dynamic>)
      ..baseType = json['baseType'] as String?;

Map<String, dynamic> _$IntervalTypeInfoToJson(IntervalTypeInfo instance) =>
    <String, dynamic>{
      'baseTypeSpecifier': instance.baseTypeSpecifier,
      'baseType': instance.baseType,
      'pointTypeSpecifier': instance.pointTypeSpecifier,
      'pointType': instance.pointType,
    };

ListTypeInfo _$ListTypeInfoFromJson(Map<String, dynamic> json) => ListTypeInfo(
      elementTypeSpecifier: json['elementTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['elementTypeSpecifier'] as Map<String, dynamic>),
      elementType: json['elementType'] as String?,
    )
      ..baseTypeSpecifier = json['baseTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['baseTypeSpecifier'] as Map<String, dynamic>)
      ..baseType = json['baseType'] as String?;

Map<String, dynamic> _$ListTypeInfoToJson(ListTypeInfo instance) =>
    <String, dynamic>{
      'baseTypeSpecifier': instance.baseTypeSpecifier,
      'baseType': instance.baseType,
      'elementTypeSpecifier': instance.elementTypeSpecifier,
      'elementType': instance.elementType,
    };

TupleTypeInfoElement _$TupleTypeInfoElementFromJson(
        Map<String, dynamic> json) =>
    TupleTypeInfoElement(
      typeSpecifier: json['typeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['typeSpecifier'] as Map<String, dynamic>),
      elementTypeSpecifier: json['elementTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['elementTypeSpecifier'] as Map<String, dynamic>),
      name: json['name'] as String?,
      type: json['type'] as String?,
      elementType: json['elementType'] as String?,
      prohibited: json['prohibited'] as bool?,
      prohibitedSpecified: json['prohibitedSpecified'] as bool?,
      oneBased: json['oneBased'] as bool?,
      oneBasedSpecified: json['oneBasedSpecified'] as bool?,
    );

Map<String, dynamic> _$TupleTypeInfoElementToJson(
        TupleTypeInfoElement instance) =>
    <String, dynamic>{
      'typeSpecifier': instance.typeSpecifier,
      'elementTypeSpecifier': instance.elementTypeSpecifier,
      'name': instance.name,
      'type': instance.type,
      'elementType': instance.elementType,
      'prohibited': instance.prohibited,
      'prohibitedSpecified': instance.prohibitedSpecified,
      'oneBased': instance.oneBased,
      'oneBasedSpecified': instance.oneBasedSpecified,
    };

TupleTypeInfo _$TupleTypeInfoFromJson(Map<String, dynamic> json) =>
    TupleTypeInfo(
      element: (json['element'] as List<dynamic>?)
          ?.map((e) => TupleTypeInfoElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..baseTypeSpecifier = json['baseTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['baseTypeSpecifier'] as Map<String, dynamic>)
      ..baseType = json['baseType'] as String?;

Map<String, dynamic> _$TupleTypeInfoToJson(TupleTypeInfo instance) =>
    <String, dynamic>{
      'baseTypeSpecifier': instance.baseTypeSpecifier,
      'baseType': instance.baseType,
      'element': instance.element,
    };

ProfileInfo _$ProfileInfoFromJson(Map<String, dynamic> json) => ProfileInfo()
  ..baseTypeSpecifier = json['baseTypeSpecifier'] == null
      ? null
      : TypeSpecifier.fromJson(
          json['baseTypeSpecifier'] as Map<String, dynamic>)
  ..baseType = json['baseType'] as String?
  ..parameter = (json['parameter'] as List<dynamic>?)
      ?.map((e) => TypeParameterInfo.fromJson(e as Map<String, dynamic>))
      .toList()
  ..element = (json['element'] as List<dynamic>?)
      ?.map((e) => ClassInfoElement.fromJson(e as Map<String, dynamic>))
      .toList()
  ..contextRelationship = (json['contextRelationship'] as List<dynamic>?)
      ?.map((e) => RelationshipInfo.fromJson(e as Map<String, dynamic>))
      .toList()
  ..targetContextRelationship =
      (json['targetContextRelationship'] as List<dynamic>?)
          ?.map((e) => RelationshipInfo.fromJson(e as Map<String, dynamic>))
          .toList()
  ..search = (json['search'] as List<dynamic>?)
      ?.map((e) => SearchInfo.fromJson(e as Map<String, dynamic>))
      .toList()
  ..inferenceExpression = (json['inferenceExpression'] as List<dynamic>?)
      ?.map((e) => ExpressionInfo.fromJson(e as Map<String, dynamic>))
      .toList()
  ..constraint = (json['constraint'] as List<dynamic>?)
      ?.map((e) => ConstraintInfo.fromJson(e as Map<String, dynamic>))
      .toList()
  ..namespace = json['namespace'] as String?
  ..name = json['name'] as String?
  ..identifier = json['identifier'] as String?
  ..label = json['label'] as String?
  ..description = json['description'] as String?
  ..definition = json['definition'] as String?
  ..comment = json['comment'] as String?
  ..target = json['target'] as String?
  ..retrievable = json['retrievable'] as bool
  ..primaryCodePath = json['primaryCodePath'] as String?
  ..primaryValueSetPath = json['primaryValueSetPath'] as String?;

Map<String, dynamic> _$ProfileInfoToJson(ProfileInfo instance) =>
    <String, dynamic>{
      'baseTypeSpecifier': instance.baseTypeSpecifier,
      'baseType': instance.baseType,
      'parameter': instance.parameter,
      'element': instance.element,
      'contextRelationship': instance.contextRelationship,
      'targetContextRelationship': instance.targetContextRelationship,
      'search': instance.search,
      'inferenceExpression': instance.inferenceExpression,
      'constraint': instance.constraint,
      'namespace': instance.namespace,
      'name': instance.name,
      'identifier': instance.identifier,
      'label': instance.label,
      'description': instance.description,
      'definition': instance.definition,
      'comment': instance.comment,
      'target': instance.target,
      'retrievable': instance.retrievable,
      'primaryCodePath': instance.primaryCodePath,
      'primaryValueSetPath': instance.primaryValueSetPath,
    };

ConversionInfo _$ConversionInfoFromJson(Map<String, dynamic> json) =>
    ConversionInfo(
      fromTypeSpecifier: json['fromTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['fromTypeSpecifier'] as Map<String, dynamic>),
      toTypeSpecifier: json['toTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['toTypeSpecifier'] as Map<String, dynamic>),
      functionName: json['functionName'] as String?,
      fromType: json['fromType'] as String?,
      toType: json['toType'] as String?,
    );

Map<String, dynamic> _$ConversionInfoToJson(ConversionInfo instance) =>
    <String, dynamic>{
      'fromTypeSpecifier': instance.fromTypeSpecifier,
      'toTypeSpecifier': instance.toTypeSpecifier,
      'functionName': instance.functionName,
      'fromType': instance.fromType,
      'toType': instance.toType,
    };

ChoiceTypeInfo _$ChoiceTypeInfoFromJson(Map<String, dynamic> json) =>
    ChoiceTypeInfo(
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      choice: (json['choice'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..baseTypeSpecifier = json['baseTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['baseTypeSpecifier'] as Map<String, dynamic>)
      ..baseType = json['baseType'] as String?;

Map<String, dynamic> _$ChoiceTypeInfoToJson(ChoiceTypeInfo instance) =>
    <String, dynamic>{
      'baseTypeSpecifier': instance.baseTypeSpecifier,
      'baseType': instance.baseType,
      'type': instance.type,
      'choice': instance.choice,
    };

ModelSpecifier _$ModelSpecifierFromJson(Map<String, dynamic> json) =>
    ModelSpecifier(
      url: json['url'] as String?,
      name: json['name'] as String?,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$ModelSpecifierToJson(ModelSpecifier instance) =>
    <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
      'version': instance.version,
    };

NamedTypeSpecifier _$NamedTypeSpecifierFromJson(Map<String, dynamic> json) =>
    NamedTypeSpecifier(
      modelName: json['modelName'] as String?,
      namespace: json['namespace'] as String?,
      name: json['name'] as String,
    )
      ..localId = json['localId'] as String?
      ..locator = json['locator'] as String?
      ..resultTypeName = json['resultTypeName'] == null
          ? null
          : QName.fromJson(json['resultTypeName'] as Map<String, dynamic>)
      ..annotation = (json['annotation'] as List<dynamic>?)
          ?.map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
          .toList()
      ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['resultTypeSpecifier'] as Map<String, dynamic>);

Map<String, dynamic> _$NamedTypeSpecifierToJson(NamedTypeSpecifier instance) =>
    <String, dynamic>{
      'localId': instance.localId,
      'locator': instance.locator,
      'resultTypeName': instance.resultTypeName,
      'annotation': instance.annotation,
      'resultTypeSpecifier': instance.resultTypeSpecifier,
      'modelName': instance.modelName,
      'namespace': instance.namespace,
      'name': instance.name,
    };

ListTypeSpecifier _$ListTypeSpecifierFromJson(Map<String, dynamic> json) =>
    ListTypeSpecifier()
      ..localId = json['localId'] as String?
      ..locator = json['locator'] as String?
      ..resultTypeName = json['resultTypeName'] == null
          ? null
          : QName.fromJson(json['resultTypeName'] as Map<String, dynamic>)
      ..annotation = (json['annotation'] as List<dynamic>?)
          ?.map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
          .toList()
      ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['resultTypeSpecifier'] as Map<String, dynamic>)
      ..elementTypeSpecifier = json['elementTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['elementTypeSpecifier'] as Map<String, dynamic>)
      ..elementType = json['elementType'] as String?;

Map<String, dynamic> _$ListTypeSpecifierToJson(ListTypeSpecifier instance) =>
    <String, dynamic>{
      'localId': instance.localId,
      'locator': instance.locator,
      'resultTypeName': instance.resultTypeName,
      'annotation': instance.annotation,
      'resultTypeSpecifier': instance.resultTypeSpecifier,
      'elementTypeSpecifier': instance.elementTypeSpecifier,
      'elementType': instance.elementType,
    };

IntervalTypeSpecifier _$IntervalTypeSpecifierFromJson(
        Map<String, dynamic> json) =>
    IntervalTypeSpecifier(
      pointTypeSpecifier: json['pointTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['pointTypeSpecifier'] as Map<String, dynamic>),
      pointType: json['pointType'] as String?,
    )
      ..localId = json['localId'] as String?
      ..locator = json['locator'] as String?
      ..resultTypeName = json['resultTypeName'] == null
          ? null
          : QName.fromJson(json['resultTypeName'] as Map<String, dynamic>)
      ..annotation = (json['annotation'] as List<dynamic>?)
          ?.map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
          .toList()
      ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['resultTypeSpecifier'] as Map<String, dynamic>);

Map<String, dynamic> _$IntervalTypeSpecifierToJson(
        IntervalTypeSpecifier instance) =>
    <String, dynamic>{
      'localId': instance.localId,
      'locator': instance.locator,
      'resultTypeName': instance.resultTypeName,
      'annotation': instance.annotation,
      'resultTypeSpecifier': instance.resultTypeSpecifier,
      'pointTypeSpecifier': instance.pointTypeSpecifier,
      'pointType': instance.pointType,
    };

ChoiceTypeSpecifier _$ChoiceTypeSpecifierFromJson(Map<String, dynamic> json) =>
    ChoiceTypeSpecifier(
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      choice: (json['choice'] as List<dynamic>?)
          ?.map((e) => TypeSpecifier.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..localId = json['localId'] as String?
      ..locator = json['locator'] as String?
      ..resultTypeName = json['resultTypeName'] == null
          ? null
          : QName.fromJson(json['resultTypeName'] as Map<String, dynamic>)
      ..annotation = (json['annotation'] as List<dynamic>?)
          ?.map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
          .toList()
      ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['resultTypeSpecifier'] as Map<String, dynamic>);

Map<String, dynamic> _$ChoiceTypeSpecifierToJson(
        ChoiceTypeSpecifier instance) =>
    <String, dynamic>{
      'localId': instance.localId,
      'locator': instance.locator,
      'resultTypeName': instance.resultTypeName,
      'annotation': instance.annotation,
      'resultTypeSpecifier': instance.resultTypeSpecifier,
      'type': instance.type,
      'choice': instance.choice,
    };

ParameterTypeSpecifier _$ParameterTypeSpecifierFromJson(
        Map<String, dynamic> json) =>
    ParameterTypeSpecifier(
      name: json['name'] as String,
      constraint: json['constraint'] as String,
      constraintType: json['constraintType'] as String?,
    )
      ..localId = json['localId'] as String?
      ..locator = json['locator'] as String?
      ..resultTypeName = json['resultTypeName'] == null
          ? null
          : QName.fromJson(json['resultTypeName'] as Map<String, dynamic>)
      ..annotation = (json['annotation'] as List<dynamic>?)
          ?.map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
          .toList()
      ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['resultTypeSpecifier'] as Map<String, dynamic>);

Map<String, dynamic> _$ParameterTypeSpecifierToJson(
        ParameterTypeSpecifier instance) =>
    <String, dynamic>{
      'localId': instance.localId,
      'locator': instance.locator,
      'resultTypeName': instance.resultTypeName,
      'annotation': instance.annotation,
      'resultTypeSpecifier': instance.resultTypeSpecifier,
      'name': instance.name,
      'constraint': instance.constraint,
      'constraintType': instance.constraintType,
    };

BoundParameterTypeSpecifier _$BoundParameterTypeSpecifierFromJson(
        Map<String, dynamic> json) =>
    BoundParameterTypeSpecifier(
      parameterName: json['parameterName'] as String,
      boundType: json['boundType'] as String,
      elementTypeSpecifier: json['elementTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['elementTypeSpecifier'] as Map<String, dynamic>),
    )
      ..localId = json['localId'] as String?
      ..locator = json['locator'] as String?
      ..resultTypeName = json['resultTypeName'] == null
          ? null
          : QName.fromJson(json['resultTypeName'] as Map<String, dynamic>)
      ..annotation = (json['annotation'] as List<dynamic>?)
          ?.map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
          .toList()
      ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['resultTypeSpecifier'] as Map<String, dynamic>);

Map<String, dynamic> _$BoundParameterTypeSpecifierToJson(
        BoundParameterTypeSpecifier instance) =>
    <String, dynamic>{
      'localId': instance.localId,
      'locator': instance.locator,
      'resultTypeName': instance.resultTypeName,
      'annotation': instance.annotation,
      'resultTypeSpecifier': instance.resultTypeSpecifier,
      'parameterName': instance.parameterName,
      'boundType': instance.boundType,
      'elementTypeSpecifier': instance.elementTypeSpecifier,
    };

TypeParameterInfo _$TypeParameterInfoFromJson(Map<String, dynamic> json) =>
    TypeParameterInfo(
      typeSpecifier: json['typeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['typeSpecifier'] as Map<String, dynamic>),
      name: json['name'] as String,
      constraint: json['constraint'] as String,
      constraintType: json['constraintType'] as String?,
    );

Map<String, dynamic> _$TypeParameterInfoToJson(TypeParameterInfo instance) =>
    <String, dynamic>{
      'typeSpecifier': instance.typeSpecifier,
      'name': instance.name,
      'constraint': instance.constraint,
      'constraintType': instance.constraintType,
    };

TupleTypeSpecifierElement _$TupleTypeSpecifierElementFromJson(
        Map<String, dynamic> json) =>
    TupleTypeSpecifierElement(
      elementType:
          TypeSpecifier.fromJson(json['elementType'] as Map<String, dynamic>),
      name: json['name'] as String,
    );

Map<String, dynamic> _$TupleTypeSpecifierElementToJson(
        TupleTypeSpecifierElement instance) =>
    <String, dynamic>{
      'elementType': instance.elementType,
      'name': instance.name,
    };

TupleTypeSpecifier _$TupleTypeSpecifierFromJson(Map<String, dynamic> json) =>
    TupleTypeSpecifier(
      element: (json['element'] as List<dynamic>?)
          ?.map(
              (e) => TupleElementDefinition.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..localId = json['localId'] as String?
      ..locator = json['locator'] as String?
      ..resultTypeName = json['resultTypeName'] == null
          ? null
          : QName.fromJson(json['resultTypeName'] as Map<String, dynamic>)
      ..annotation = (json['annotation'] as List<dynamic>?)
          ?.map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
          .toList()
      ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
          ? null
          : TypeSpecifier.fromJson(
              json['resultTypeSpecifier'] as Map<String, dynamic>);

Map<String, dynamic> _$TupleTypeSpecifierToJson(TupleTypeSpecifier instance) =>
    <String, dynamic>{
      'localId': instance.localId,
      'locator': instance.locator,
      'resultTypeName': instance.resultTypeName,
      'annotation': instance.annotation,
      'resultTypeSpecifier': instance.resultTypeSpecifier,
      'element': instance.element,
    };
