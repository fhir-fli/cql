import '../../cql.dart';

class ClassType extends DataType implements NamedType {
  String name;
  String? identifier;
  String? label;
  String? target;
  bool? retrievable;
  String? primaryCodePath;
  String? primaryValueSetPath;
  List<ClassTypeElement> elements = [];

  /// Generic class parameters such 'S', 'T extends MyType'.
  List<TypeParameter> genericParameters = [];
  List<Relationship> relationships = [];
  List<Relationship> targetRelationships = [];
  List<SearchType> searches = [];
  List<ClassTypeElement>? sortedElements;
  TupleType? tupleType;
  Map<String, ClassTypeElement>? baseElementMap;

  ClassType({
    DataType? baseType,
    required this.name,
    this.identifier,
    this.label,
    this.target,
    this.retrievable = false,
    this.primaryCodePath,
    this.primaryValueSetPath,
    List<ClassTypeElement>? elements,
    List<TypeParameter>? parameters,
    List<Relationship>? relationships,
    List<Relationship>? targetRelationships,
    List<SearchType>? searches,
  }) : super(baseType) {
    if (name.isEmpty) {
      throw ArgumentError("name is null");
    }
    this.elements.addAll(elements ?? []);
    genericParameters.addAll(parameters ?? []);
    this.relationships.addAll(relationships ?? []);
    this.targetRelationships.addAll(targetRelationships ?? []);
    this.searches.addAll(searches ?? []);
  }

  @override
  String getName() => name;

  @override
  String getNamespace() {
    int qualifierIndex = name.indexOf('.');
    if (qualifierIndex > 0) {
      return name.substring(0, qualifierIndex);
    }
    return "";
  }

  @override
  String getSimpleName() {
    int qualifierIndex = name.indexOf('.');
    if (qualifierIndex > 0) {
      return name.substring(qualifierIndex + 1);
    }
    return name;
  }

  String? getIdentifier() => identifier;

  String? getLabel() => label;

  @override
  String? getTarget() => target;

  bool? isRetrievable() => retrievable;

  String? getPrimaryCodePath() => primaryCodePath;

  String? getPrimaryValueSetPath() => primaryValueSetPath;

  List<Relationship> getRelationships() => relationships;

  void addRelationship(Relationship relationship) {
    relationships.add(relationship);
  }

  List<Relationship> getTargetRelationships() => targetRelationships;

  List<SearchType> getSearches() => searches;

  void addSearch(SearchType search) {
    searches.add(search);
  }

  SearchType? findSearch(String searchPath) {
    final index = searches.indexWhere((search) => search.name == searchPath);
    if (index >= 0) {
      return searches[index];
    } else {
      return null;
    }
  }

  /// Returns the generic parameters for the generic type. For instance,
  /// for the generic type Map&lt;K,V extends Person&gt;, two generic parameters
  /// will be returned: K and V extends Person. The latter parameter has a constraint
  /// restricting the type of the bound type to be a valid subtype of Person.
  ///
  /// @return Class' generic parameters
  List<TypeParameter> getGenericParameters() => genericParameters;

  void addGenericParameter(TypeParameter genericParameter) {
    genericParameters.add(genericParameter);
  }

  void addGenericParameterCollection(List<TypeParameter> parameters) {
    for (var parameter in parameters) {
      internalAddParameter(parameter);
    }
    sortedElements = null;
    tupleType = null;
  }

  TypeParameter? getGenericParameterByIdentifier(String identifier,
      [bool inCurrentClassOnly = false]) {
    TypeParameter? param;
    for (var genericParameter in genericParameters) {
      if (identifier.toLowerCase() ==
          genericParameter.identifier.toLowerCase()) {
        param = genericParameter;
        break;
      }
    }
    if (!inCurrentClassOnly && param == null && baseType is ClassType) {
      param =
          (baseType as ClassType).getGenericParameterByIdentifier(identifier);
    }
    return param;
  }

  List<ClassTypeElement> getElements() => elements;

  Map<String, ClassTypeElement>? getBaseElementMap() {
    if (baseElementMap == null) {
      baseElementMap = <String, ClassTypeElement>{};
      if (baseType is ClassType) {
        (baseType as ClassType).gatherElements(baseElementMap!);
      }
    }
    return baseElementMap;
  }

  void gatherElements(Map<String, ClassTypeElement> elementMap) {
    if (baseType is ClassType) {
      (baseType as ClassType).gatherElements(elementMap);
    }

    for (var element in elements) {
      elementMap[element.name] = element;
    }
  }

  List<ClassTypeElement> getAllElements() {
    final Map<String, ClassTypeElement>? elementMap = getBaseElementMap();
    if (elementMap == null) {
      return elements;
    }
    for (var el in elements) {
      elementMap[el.name] = el;
    }

    return elementMap.values.toList();
  }

  void internalAddElement(ClassTypeElement element) {
    var existingElement = getBaseElementMap()?[element.name];
    if (existingElement != null &&
        existingElement.type is! TypeParameter &&
        !(element.type.isSubTypeOf(existingElement.type) ||
            (existingElement.type is ListType &&
                element.type.isSubTypeOf(
                    (existingElement.type as ListType).elementType)) ||
            (existingElement.type is IntervalType &&
                element.type.isSubTypeOf(
                    (existingElement.type as IntervalType).pointType)) ||
            (existingElement.type is ChoiceType &&
                element.type.isCompatibleWith(existingElement.type)))) {
      throw InvalidRedeclarationException.ofRedeclaration(
          this, existingElement, element);
    }
    elements.add(element);
  }

  void internalAddParameter(TypeParameter parameter) {
    //TODO Flesh out and retain method only if needed.
    genericParameters.add(parameter);
  }

  void addElement(ClassTypeElement element) {
    internalAddElement(element);
    sortedElements = null;
    tupleType = null;
  }

  void addElements(List<ClassTypeElement> elements) {
    for (var element in elements) {
      internalAddElement(element);
    }
    sortedElements = null;
    tupleType = null;
  }

  List<ClassTypeElement> getSortedElements() {
    if (sortedElements == null) {
      sortedElements = List<ClassTypeElement>.from(elements);
      sortedElements!.sort((left, right) => left.name.compareTo(right.name));
    }
    return sortedElements!;
  }

  @override
  int get hashCode => name.hashCode;

  @override
  bool operator ==(Object other) {
    return other is ClassType && name == other.name;
  }

  @override
  String toString() {
    var buffer = StringBuffer();
    buffer.write(name);
    if (genericParameters.isNotEmpty) {
      buffer.write('<');
      for (var i = 0; i < genericParameters.length; i++) {
        if (i > 0) {
          buffer.write(',');
        }
        buffer.write(genericParameters[i]);
      }
      buffer.write('>');
    }
    return buffer.toString();
  }

  @override
  String toLabel() => label ?? name;

  TupleType getTupleType() {
    tupleType ??= buildTupleType();
    return tupleType!;
  }

  void addTupleElements(
      ClassType classType, Map<String, TupleTypeElement> elements) {
    if (classType.baseType is ClassType) {
      addTupleElements(classType.baseType as ClassType, elements);
    }

    for (var element in classType.elements) {
      if (!element.prohibited) {
        var tupleElement =
            TupleTypeElement(name: element.name, type: element.type);
        elements[tupleElement.name] = tupleElement;
      }
    }
  }

  TupleType buildTupleType() {
    var tupleElements = <String, TupleTypeElement>{};
    addTupleElements(this, tupleElements);
    return TupleType(elements: tupleElements.values.toList());
  }

  @override
  bool isCompatibleWith(DataType other) {
    if (other is TupleType) {
      return getTupleType() == other;
    }
    return super.isCompatibleWith(other);
  }

  @override
  bool get isGeneric => genericParameters.isNotEmpty;

  @override
  bool isInstantiable(DataType callType, InstantiationContext context) {
    if (callType is ClassType) {
      ClassType classType = callType;
      if (elements.length == classType.elements.length) {
        var theseElements = getSortedElements();
        var thoseElements = classType.getSortedElements();
        for (var i = 0; i < theseElements.length; i++) {
          if (!(theseElements[i].name == thoseElements[i].name &&
              theseElements[i]
                  .type
                  .isInstantiable(thoseElements[i].type, context))) {
            return false;
          }
        }
        return true;
      }
    }
    return false;
  }

  @override
  DataType instantiate(InstantiationContext context) {
    if (!isGeneric) {
      return this;
    }

    var result = ClassType(name: name, baseType: baseType);
    for (var element in elements) {
      result.addElement(ClassTypeElement(
          name: element.name, type: element.type.instantiate(context)));
    }
    return result;
  }
}
