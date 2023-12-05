import 'package:json_annotation/json_annotation.dart';
import 'package:xml/xml.dart';

import '../cql.dart';

class ContextInfo {
  NamedTypeSpecifier? contextType;
  String? name;
  String? keyElement;
  String? birthDateElement;

  ContextInfo(
      {this.contextType, this.name, this.keyElement, this.birthDateElement});
}

class RelationshipInfo {
  String context;
  String? relatedKeyElement;

  RelationshipInfo({
    required this.context,
    this.relatedKeyElement,
  });
}

class SearchInfo {
  TypeSpecifier? typeSpecifier;
  String? name;
  String? path;
  String? type;
  String? label;
  String? description;
  String? definition;
  String? comment;

  SearchInfo(
      {this.typeSpecifier,
      this.name,
      this.path,
      this.type,
      this.label,
      this.description,
      this.definition,
      this.comment});
}

class ModelInfo {
  List<ModelSpecifier>? requiredModelInfo;
  List<TypeInfo>? typeInfo;
  List<ConversionInfo>? conversionInfo;
  List<ContextInfo>? contextInfo;
  String? name;
  String? version;
  String? url;
  String? targetUrl;
  String? targetVersion;
  String? schemaLocation;
  String? targetQualifier;
  String? patientClassName;
  String? patientClassIdentifier;
  String? patientBirthDatePropertyName;
  bool? caseSensitive;
  bool? caseSensitiveSpecified;
  bool? strictRetrieveTyping;
  bool? strictRetrieveTypingSpecified;
  String? defaultContext;

  ModelInfo({
    this.requiredModelInfo,
    this.typeInfo,
    this.conversionInfo,
    this.contextInfo,
    this.name,
    this.version,
    this.url,
    this.schemaLocation,
    this.patientClassName,
    this.patientClassIdentifier,
    this.patientBirthDatePropertyName,
    this.caseSensitive,
    this.strictRetrieveTyping,
  });

  factory ModelInfo.fromXml(XmlDocument xmlDocument) {
    final modelInfo = ModelInfo();
    final modelInfoElement = xmlDocument.findAllElements('modelInfo').first;
    modelInfo.requiredModelInfo = modelInfoElement
        .findAllElements('requiredModelInfo')
        .map((e) => ModelSpecifier(
              url: e.getAttribute('url'),
              name: e.getAttribute('name'),
              version: e.getAttribute('version'),
            ))
        .toList();

    modelInfo.name = modelInfoElement.getAttribute('name');
    modelInfo.version = modelInfoElement.getAttribute('version');
    modelInfo.url = modelInfoElement.getAttribute('url');
    modelInfo.schemaLocation = modelInfoElement.getAttribute('schemaLocation');
    modelInfo.patientClassName =
        modelInfoElement.getAttribute('patientClassName');
    modelInfo.patientClassIdentifier =
        modelInfoElement.getAttribute('patientClassIdentifier');
    modelInfo.patientBirthDatePropertyName =
        modelInfoElement.getAttribute('patientBirthDatePropertyName');
    modelInfo.caseSensitive =
        modelInfoElement.getAttribute('caseSensitive') == 'true';
    modelInfo.strictRetrieveTyping =
        modelInfoElement.getAttribute('strictRetrieveTyping') == 'true';
    return modelInfo;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ModelInfo &&
        other.name == name &&
        other.version == version &&
        other.url == url &&
        other.schemaLocation == schemaLocation &&
        other.patientClassName == patientClassName &&
        other.patientClassIdentifier == patientClassIdentifier &&
        other.patientBirthDatePropertyName == patientBirthDatePropertyName &&
        other.caseSensitive == caseSensitive &&
        other.strictRetrieveTyping == strictRetrieveTyping;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        version.hashCode ^
        url.hashCode ^
        schemaLocation.hashCode ^
        patientClassName.hashCode ^
        patientClassIdentifier.hashCode ^
        patientBirthDatePropertyName.hashCode ^
        caseSensitive.hashCode ^
        strictRetrieveTyping.hashCode;
  }

  @override
  String toString() {
    return 'ModelInfo{requiredModelInfo: name: $name, version: $version, url: $url, '
        'schemaLocation: $schemaLocation, patientClassName: $patientClassName, '
        'patientClassIdentifier: $patientClassIdentifier, '
        'patientBirthDatePropertyName: $patientBirthDatePropertyName, '
        'caseSensitive: $caseSensitive, strictRetrieveTyping: $strictRetrieveTyping}';
  }
}

enum BindingStrength {
  @JsonValue('Required')
  required,
  @JsonValue('Extensible')
  extensible,
  @JsonValue('Preferred')
  preferred,
  @JsonValue('Example')
  example,
}

class BindingInfo {
  String? name;
  String? description;
  BindingStrength? strength;
  String? valueSet;

  BindingInfo({this.name, this.description, this.strength, this.valueSet});
}

class ClassInfoElement {
  TypeSpecifier? typeSpecifier;
  TypeSpecifier? elementTypeSpecifier;
  BindingInfo? binding;
  List<ConstraintInfo>? constraint;
  String? name;
  String? type;
  String? elementType;
  bool prohibited = false;
  bool prohibitedSpecified = false;
  bool oneBased = false;
  bool oneBasedSpecified = false;
  String? target;
  String? label;
  String? description;
  String? definition;
  String? comment;
  int min = 0;
  bool minSpecified = false;
  String? max;
  bool mustSupport = false;
  bool mustSupportSpecified = false;

  ClassInfoElement(
      {this.typeSpecifier,
      this.elementTypeSpecifier,
      this.binding,
      this.constraint,
      this.name,
      this.type,
      this.elementType,
      this.prohibited = false,
      this.prohibitedSpecified = false,
      this.oneBased = false,
      this.oneBasedSpecified = false,
      this.target,
      this.label,
      this.description,
      this.definition,
      this.comment,
      this.min = 0,
      this.minSpecified = false,
      this.max,
      this.mustSupport = false,
      this.mustSupportSpecified = false});
}

class ExpressionInfo {
  String? language;
  String? expression;

  ExpressionInfo({this.language, this.expression});
}

class ConstraintInfo {
  List<ExpressionInfo>? expression;
  String? name;
  String? severity;
  String? description;
  String? message;

  ConstraintInfo(
      {this.expression,
      this.name,
      this.severity,
      this.description,
      this.message});
}

class ClassInfo extends TypeInfo {
  List<TypeParameterInfo>? parameter;
  List<ClassInfoElement>? element;
  List<RelationshipInfo>? contextRelationship;
  List<RelationshipInfo>? targetContextRelationship;
  List<SearchInfo>? search;
  List<ExpressionInfo>? inferenceExpression;
  List<ConstraintInfo>? constraint;
  String? namespace;
  String? name;
  String? identifier;
  String? label;
  String? description;
  String? definition;
  String? comment;
  String? target;
  bool retrievable = false;
  String? primaryCodePath;
  String? primaryValueSetPath;

  ClassInfo(
      {this.parameter,
      this.element,
      this.contextRelationship,
      this.targetContextRelationship,
      this.search,
      this.inferenceExpression,
      this.constraint,
      this.namespace,
      this.name,
      this.identifier,
      this.label,
      this.description,
      this.definition,
      this.comment,
      this.target,
      this.retrievable = false,
      this.primaryCodePath,
      this.primaryValueSetPath});
}

class TypeInfo {
  TypeInfo({this.baseTypeSpecifier, this.baseType});

  TypeSpecifier? baseTypeSpecifier;
  String? baseType;
}

class SimpleTypeInfo extends TypeInfo {
  String? namespace;
  String? name;
  String? target;

  SimpleTypeInfo({this.namespace, this.name, this.target});
}

class IntervalTypeInfo extends TypeInfo {
  TypeSpecifier? pointTypeSpecifier;
  String? pointType;

  IntervalTypeInfo({this.pointTypeSpecifier, this.pointType});
}

class ListTypeInfo extends TypeInfo {
  TypeSpecifier? elementTypeSpecifier;
  String? elementType;

  ListTypeInfo({this.elementTypeSpecifier, this.elementType});
}

class TupleTypeInfoElement {
  TypeSpecifier? typeSpecifier;
  TypeSpecifier? elementTypeSpecifier;
  String? name;
  String? type;
  String? elementType;
  bool? prohibited;
  bool? prohibitedSpecified;
  bool? oneBased;
  bool? oneBasedSpecified;

  TupleTypeInfoElement({
    this.typeSpecifier,
    this.elementTypeSpecifier,
    this.name,
    this.type,
    this.elementType,
    this.prohibited,
    this.prohibitedSpecified,
    this.oneBased,
    this.oneBasedSpecified,
  });
}

class TupleTypeInfo extends TypeInfo {
  List<TupleTypeInfoElement>? element;

  TupleTypeInfo({this.element});
}

class ProfileInfo extends ClassInfo {}

class ConversionInfo {
  TypeSpecifier? fromTypeSpecifier;
  TypeSpecifier? toTypeSpecifier;
  String? functionName;
  String? fromType;
  String? toType;

  ConversionInfo(
      {this.fromTypeSpecifier,
      this.toTypeSpecifier,
      this.functionName,
      this.fromType,
      this.toType});
}

class ChoiceTypeInfo extends TypeInfo {
  List<TypeSpecifier>? type;
  List<TypeSpecifier>? choice;

  ChoiceTypeInfo({this.type, this.choice});
}

class ModelSpecifier {
  String? url;
  String? name;
  String? version;
  ModelSpecifier({this.url, this.name, this.version});
}

class NamedTypeSpecifier extends TypeSpecifier {
  String? modelName;
  String? namespace;
  String name;

  NamedTypeSpecifier({this.modelName, this.namespace, required this.name});
}

class ListTypeSpecifier extends TypeSpecifier {
  TypeSpecifier? elementTypeSpecifier;
  String? elementType;
}

class IntervalTypeSpecifier extends TypeSpecifier {
  IntervalTypeSpecifier({this.pointTypeSpecifier, this.pointType});

  TypeSpecifier? pointTypeSpecifier;
  String? pointType;
}

class ChoiceTypeSpecifier extends TypeSpecifier {
  @JsonKey(name: 'type')
  List<TypeSpecifier>? type;

  @JsonKey(name: 'choice')
  List<TypeSpecifier>? choice;

  ChoiceTypeSpecifier({this.type, this.choice});
}

class ParameterTypeSpecifier extends TypeSpecifier {
  ParameterTypeSpecifier(
      {required this.name, required this.constraint, this.constraintType});
  String name;
  String constraint;
  String? constraintType;
}

class BoundParameterTypeSpecifier extends TypeSpecifier {
  BoundParameterTypeSpecifier(
      {required this.parameterName,
      required this.boundType,
      this.elementTypeSpecifier});

  String parameterName;
  String boundType;
  TypeSpecifier? elementTypeSpecifier;
}

class TypeParameterInfo {
  TypeParameterInfo(
      {this.typeSpecifier,
      required this.name,
      required this.constraint,
      this.constraintType});

  TypeSpecifier? typeSpecifier;
  String name;
  String constraint;
  String? constraintType;
}

class TupleTypeSpecifierElement {
  TupleTypeSpecifierElement({required this.elementType, required this.name});

  TypeSpecifier elementType;
  String name;
}

class TupleTypeSpecifier extends TypeSpecifier {
  @JsonKey(name: 'element')
  List<TupleElementDefinition>? element;

  TupleTypeSpecifier({this.element});
}
