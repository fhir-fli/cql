import '../../cql.dart';

/// Defines metadata associated with a specific model for use by the CQL translator.
///
/// The [ModelInfo] type encapsulates metadata enabling the model to be utilized
/// by the CQL translator. None of the information specified here is mandatory;
/// it offers convenient shorthands within the language.
class ModelInfo {
  /// Specifies the name of the data model.
  String name;

  /// Specifies the version of the data model.
  String? version;

  /// Specifies the XML namespace associated with the model.
  Uri url;

  /// Used by the CQL translator to output the schemaLocation.
  String? schemaLocation;

  /// Specifies the namespace qualifier for referencing types.
  QName? targetQualifier;

  /// DEPRECATED: Specifies the name of the Patient class.
  String? patientClassName;

  /// DEPRECATED: Unique name for the Patient class.
  String? patientClassIdentifier;

  /// DEPRECATED: Specifies the birthdate property.
  String? patientBirthDatePropertyName;

  /// Indicates if identifiers should be resolved case-sensitively.
  bool? caseSensitive;

  /// Indicates semantic validation for retrieve expressions.
  bool? strictRetrieveTyping;

  /// Specifies the default context for CQL expressions.
  String? defaultContext;

  ModelInfo({
    required this.name,
    required this.url,
    this.version,
    this.schemaLocation,
    this.targetQualifier,
    this.patientClassName,
    this.patientClassIdentifier,
    this.patientBirthDatePropertyName,
    this.caseSensitive,
    this.strictRetrieveTyping,
    this.defaultContext,
  });
}

/// Defines an available context type for the model.
///
/// The [ContextInfo] type defines the available context types for the model,
/// specifying the context type name, key elements, and birthDateElement.
class ContextInfo {
  /// Specifies the name of the context.
  String name;

  /// Specifies the key elements forming the reference key.
  String? keyElement;

  /// Specifies the name of the birthDateElement.
  String? birthDateElement;

  ContextInfo({
    required this.name,
    this.keyElement,
    this.birthDateElement,
  });
}

/// Defines the relationship of a class to the context.
///
/// The [RelationshipInfo] type defines relationships between a class and
/// its context, specifying the target context and related key elements.
class RelationshipInfo {
  /// Specifies the target context of the relationship.
  String context;

  /// Specifies the related key elements of the type containing the reference.
  String? relatedKeyElement;

  RelationshipInfo({
    required this.context,
    this.relatedKeyElement,
  });
}

/// Element within ClassInfoElement type, deprecated.
///
/// The [ClassInfoElement] type specifies an element deprecated in favor of
/// the elementTypeSpecifier. It provides an option to define typeSpecifier
/// and elementTypeSpecifier elements along with attributes.
class ClassInfoElement {
  /// Specifies the name of the element.
  String name;

  /// DEPRECATED: Specifies the type of the element.
  String? type;

  /// Specifies the type of the element, replacing 'type' attribute.
  String? elementType;

  /// Specifies whether the element is prohibited.
  bool? prohibited;

  /// Indicates the starting index for a list-valued element is one.
  bool? oneBased;

  /// Specifies a path to access the value for this element in the representation.
  String? target;

  ClassInfoElement({
    required this.name,
    this.type,
    this.elementType,
    this.prohibited,
    this.oneBased,
    this.target,
  });
}

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
}

/// An abstract type containing a base type specifier element.
///
/// The [TypeInfo] abstract type serves as a base for other types,
/// containing a baseTypeSpecifier element and baseType attribute.
abstract class TypeInfo {
  /// Base type specifier element.
  TypeSpecifier? baseTypeSpecifier;

  /// Base type as a string.
  String? baseType;

  TypeInfo({
    this.baseTypeSpecifier,
    this.baseType,
  });
}

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
  });
}

/// Represents an interval type, extending [TypeInfo].
///
/// The [IntervalTypeInfo] type represents an interval type, extending [TypeInfo],
/// incorporating a pointTypeSpecifier element and pointType attribute.
class IntervalTypeInfo extends TypeInfo {
  /// Point type specifier element.
  TypeSpecifier? pointTypeSpecifier;

  /// Point type as a string.
  String? pointType;

  IntervalTypeInfo({
    this.pointTypeSpecifier,
    this.pointType,
  });
}

/// Represents a list type, extending [TypeInfo].
///
/// The [ListTypeInfo] type represents a list type, extending [TypeInfo],
/// including an elementTypeSpecifier element and elementType attribute.
class ListTypeInfo extends TypeInfo {
  /// Element type specifier element.
  TypeSpecifier? elementTypeSpecifier;

  /// Element type as a string.
  String? elementType;

  ListTypeInfo({
    this.elementTypeSpecifier,
    this.elementType,
  });
}

/// Models an element within [TupleTypeInfo].
///
/// The [TupleTypeInfoElement] defines an element within the TupleTypeInfo,
/// indicating its type and associated attributes.
class TupleTypeInfoElement {
  /// Deprecated element.
  TypeSpecifier? typeSpecifier;

  /// Element type specifier.
  TypeSpecifier? elementTypeSpecifier;

  /// Name of the element.
  String name;

  /// Deprecated attribute.
  String? type;

  /// Element type as a string.
  String? elementType;

  /// Specifies whether the element is prohibited.
  bool? prohibited;

  /// Indicates if the starting index for a list-valued element is one.
  bool? oneBased;

  TupleTypeInfoElement({
    required this.name,
    this.typeSpecifier,
    this.elementTypeSpecifier,
    this.type,
    this.elementType,
    this.prohibited,
    this.oneBased,
  });
}

/// Represents a tuple type information, extending [TypeInfo].
///
/// The [TupleTypeInfo] type extends TypeInfo and consists of elements
/// representing TupleTypeInfoElement.
class TupleTypeInfo extends TypeInfo {
  /// Elements within TupleTypeInfo.
  List<TupleTypeInfoElement>? element;

  TupleTypeInfo({
    this.element,
  });
}

/// Represents information related to a profile, extending [ClassInfo].
///
/// The [ProfileInfo] type represents details regarding a profile,
/// inheriting from ClassInfo.
class ProfileInfo extends ClassInfo {
  ProfileInfo({required super.name});
}

/// Contains information regarding data conversions.
///
/// The [ConversionInfo] type includes specifications for data conversions,
/// such as source and target types, and the conversion function name.
class ConversionInfo {
  /// Source type specifier.
  TypeSpecifier? fromTypeSpecifier;

  /// Target type specifier.
  TypeSpecifier? toTypeSpecifier;

  /// Name of the conversion function.
  String functionName;

  /// Source type as a string.
  String? fromType;

  /// Target type as a string.
  String? toType;

  ConversionInfo({
    required this.functionName,
    this.fromTypeSpecifier,
    this.toTypeSpecifier,
    this.fromType,
    this.toType,
  });
}

/// Represents a choice type information, extending [TypeInfo].
///
/// The [ChoiceTypeInfo] type represents a choice type, extending TypeInfo,
/// including type and choice elements.
class ChoiceTypeInfo extends TypeInfo {
  /// Deprecated type element.
  List<TypeSpecifier>? type;

  /// Choice type elements.
  List<TypeSpecifier>? choice;

  ChoiceTypeInfo({
    this.type,
    this.choice,
  });
}

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
}

/// Represents type parameter information.
///
/// The [TypeParameterInfo] type specifies details regarding a generic class parameter,
/// including its name, constraint, and optional constraint type.
class TypeParameterInfo {
  /// Name of the parameter.
  String name;

  /// Parameter constraint (NONE, CLASS, VALUE, TUPLE, INTERVAL, CHOICE, TYPE).
  String constraint;

  /// Type this parameter should be assignable from.
  String? constraintType;

  /// Type specifier.
  TypeSpecifier? typeSpecifier;

  TypeParameterInfo({
    required this.name,
    required this.constraint,
    this.constraintType,
    this.typeSpecifier,
  });
}
