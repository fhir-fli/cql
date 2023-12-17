// ignore_for_file: constant_identifier_names

import '../cql.dart';
import 'dart_properties.dart';
import 'model_importer_mapper_value.dart';

class ModelImporterOptions {
  final RegExp retypePattern = RegExp("\\s*retype\\.(.+)\\s*");
  static RegExp extendPattern = RegExp("\\s*extend\\.([^\\[]+)\\s*");
  static RegExp extendElPattern =
      RegExp("\\s*extend\\.([^\\[]+)\\[([^\\]]+)\\]\\s*");

  /// The name of the data model.  This will be used in the "using" statement of CQL.
  String? model;

  /// XSD allows choice types, indicating that an element may be one of a set of choices. In CQL 1.2, a new choice
  /// type was introduced to the type system, allowing for first-class representation of these types of elements:
  /// <ul>
  ///     <li><b>USE_CHOICE</b>: Generate a single element with a choice type.</li>
  ///     <li><b>EXPAND</b>: Generate multiple elements, one for each type in the choice.</li>
  /// </ul>
  ChoiceTypePolicy? choiceTypePolicy;

  /// XSD allows simple types to be restricted by certain constraints (e.g. string patterns, numerical ranges, etc).
  /// The modelinfo is not sophisticated enough to properly represent the constraints in the restriction.  As such,
  /// there are multiple ways to represent a simple type that is a restriction on another simple type:
  /// <ul>
  /// <li><b>USE_BASETYPE</b>: Replace all instances of the simple type with its base type (e.g., a restriction on
  /// xsd:string simply becomes System.String in the modelinfo).  This is the default.</li>
  /// <li><b>EXTEND_BASETYPE</b>: Create a new simple type representation that simply extends the base type.  This
  /// maintains the distinction of the restriction type, but still doesn't retain the actual restriction
  /// constraints.  Using this option may require CQL authors to perform additional casts.</li>
  /// <li><b>IGNORE</b>: Create a new simple type with no relation to the base type.  This is rarely the intended
  /// behavior.</li>
  /// </ul>
  SimpleTypeRestrictionPolicy? simpleTypeRestrictionPolicy;

  /// XSD allows restrictions and extensions to redeclare elements with different types and/or cardinalities.  In CQL,
  /// redeclared element types must be a subtype of the original type, and redeclared cardinalities must be narrower
  /// than the origin cardinality.  If xsd-to-modelinfo detects an invalid element declaration, it will behave
  /// according to one of these policies:
  /// <ul>
  /// <li><b>RENAME_INVALID_REDECLARATIONS</b>: Rename the element so it is a new element and does not clash with the
  /// basetype element.  The element will be renamed by appending the redeclared type to the name using CamelCase
  /// (e.g., if element "foo" is redeclared to type "bar", and this is invalid, it will be renamed "fooBar").</li>
  /// <li><b>DISCARD_INVALID_REDECLARATIONS</b>: Discard the redeclaration, falling back to the originally declared
  /// element type and cardinality.</li>
  /// <li><b>FAIL_INVALID_REDECLARATIONS</b>: Throw an exception. This is the default behavior.</li>
  /// </ul>
  ElementRedeclarationPolicy? elementRedeclarationPolicy;

  /// Determines whether deprecated elements should be included in the output.
  /// <ul>
  ///     <li><b>CURRENT</b>: Include only elements for the latest version of model info.</li>
  ///     <li><b>INCLUDE_DEPRECATED</b>: Include deprecated elements in addition to elements for the latest version.</li>
  /// </ul>
  VersionPolicy? versionPolicy;

  /// Some HL7 standards prefix all of their type names with an ID of the standard.  For example, the CDA R2 schema
  /// prefixes its types with "POCD_MT000040."  This would require CQL authors to include the prefix in retrieve
  /// statements (e.g., [POCD_MT000040.Procedure]).
  /// <p>
  /// By setting normalizePrefix to the prefix string (e.g., CDA.POCD_MT000040.), the modelinfo will indicate a label
  /// for each class to allow CQL authors to reference it without the prefix (e.g., [Procedure]).
  /// <p>
  /// NOTE: The passed in prefix must also include the model name prefix (e.g., if the model name is "CDA" and the CDA
  /// schema adds a prefix "POCD_MT000040" to type names, then normalizePrefix should be "CDA.POCD_MT000040."
  String? normalizePrefix;

  /// The typeMap is used to hold mappings from XSD types to CQL System types.  This allows XSD types to be "retyped"
  /// to CQL System Types or to "extend" CQL System types.  For extensions, the original type's elements can also be
  /// mapped to the elements of the CQL System type (so there are not duplicate concepts w/ different names).
  final Map<QName, ModelImporterMapperValue> typeMap =
      <QName, ModelImporterMapperValue>{};

  ModelImporterOptions withModel(String model) {
    this.model = model;
    return this;
  }

  ChoiceTypePolicy getChoiceTypePolicy() =>
      choiceTypePolicy ?? ChoiceTypePolicy.expand;

  ModelImporterOptions withChoiceTypePolicy(ChoiceTypePolicy choiceTypePolicy) {
    this.choiceTypePolicy = choiceTypePolicy;
    return this;
  }

  SimpleTypeRestrictionPolicy getSimpleTypeRestrictionPolicy() =>
      simpleTypeRestrictionPolicy ?? SimpleTypeRestrictionPolicy.useBasetype;

  ModelImporterOptions withSimpleTypeRestrictionPolicy(
      SimpleTypeRestrictionPolicy simpleTypeRestrictionPolicy) {
    this.simpleTypeRestrictionPolicy = simpleTypeRestrictionPolicy;
    return this;
  }

  ElementRedeclarationPolicy getElementRedeclarationPolicy() =>
      elementRedeclarationPolicy ??
      ElementRedeclarationPolicy.failInvalidRedeclarations;

  ModelImporterOptions withElementRedeclarationPolicy(
      ElementRedeclarationPolicy elementRedeclarationPolicy) {
    this.elementRedeclarationPolicy = elementRedeclarationPolicy;
    return this;
  }

  VersionPolicy getVersionPolicy() => versionPolicy ?? VersionPolicy.current;

  ModelImporterOptions withVersionPolicy(VersionPolicy versionPolicy) {
    this.versionPolicy = versionPolicy;
    return this;
  }

  String? getNormalizePrefix() => normalizePrefix;

  ModelImporterOptions withNormalizePrefix(String normalizePrefix) {
    this.normalizePrefix = normalizePrefix;
    return this;
  }

  Map<QName, ModelImporterMapperValue> getTypeMap() => typeMap;

  void applyProperties(DartProperties properties) {
    String? model = properties.getProperty("model");
    if (model != null && model.isNotEmpty) {
      this.model = model;
    }

    String? normalizePrefix = properties.getProperty("normalize-prefix");
    if (normalizePrefix != null && normalizePrefix.isNotEmpty) {
      this.normalizePrefix = normalizePrefix;
    }

    String? choiceTypePolicy = properties.getProperty("choicetype-policy");
    if (choiceTypePolicy != null && choiceTypePolicy.isNotEmpty) {
      this.choiceTypePolicy = ChoiceTypePolicy.valueOf(choiceTypePolicy);
    }

    String? simpleTypeRestrictionPolicy =
        properties.getProperty("simpletype-restriction-policy");
    if (simpleTypeRestrictionPolicy != null &&
        simpleTypeRestrictionPolicy.isNotEmpty) {
      if (SimpleTypeRestrictionPolicy.valueOf(simpleTypeRestrictionPolicy) !=
          null) {
        this.simpleTypeRestrictionPolicy =
            SimpleTypeRestrictionPolicy.valueOf(simpleTypeRestrictionPolicy)!;
      }
    }

    String? elementRedeclarationPolicy =
        properties.getProperty("element-redeclaration-policy");
    if (elementRedeclarationPolicy != null &&
        elementRedeclarationPolicy.isNotEmpty) {
      this.elementRedeclarationPolicy =
          ElementRedeclarationPolicy.valueOf(elementRedeclarationPolicy);
    }

    String? versionPolicy = properties.getProperty("version-policy");
    if (versionPolicy != null && versionPolicy.isNotEmpty) {
      this.versionPolicy = VersionPolicy.valueOf(versionPolicy);
    }

    for (final p in properties.stringPropertyNames().toList()..sort()) {
      final retypePatternMatcher = retypePattern.allMatches(p);
      final retypePatternGroup = retypePatternMatcher.length > 1
          ? retypePatternMatcher.elementAt(1)
          : null;
      if (retypePatternGroup != null) {
        final QName qName = QName.valueOf(retypePatternGroup.input);
        final property = properties.getProperty(p);
        if (property != null) {
          typeMap[qName] = ModelImporterMapperValue.newRetype(property);
        }
        continue;
      }

      final extendPatternMatcher = extendPattern.allMatches(p);
      final extendPatternGroup = extendPatternMatcher.length > 1
          ? extendPatternMatcher.elementAt(1)
          : null;
      if (extendPatternGroup != null) {
        final QName qName = QName.valueOf(extendPatternGroup.input);
        final property = properties.getProperty(p);
        if (property != null) {
          typeMap[qName] = ModelImporterMapperValue.newExtend(property);
        }
        continue;
      }

      final extendElPatternMatcher = extendElPattern.allMatches(p);
      if (extendElPatternMatcher.length == 1 &&
          extendElPatternMatcher.first.start == 0 &&
          extendElPatternMatcher.first.end == p.length) {
        final existingValue =
            typeMap[QName.valueOf(extendElPatternMatcher.elementAt(1).input)];
        if (existingValue == null) {
          throw ArgumentError(
              "Class element mapping declared before class mapping: $p");
        } else if (existingValue.relationship == ModelRelationship.retype) {
          throw ArgumentError(
              "Cannot map class elements for retyped classes: $p");
        } else if (properties.getProperty(p) == null) {
          throw ArgumentError(
              "Cannot map class elements for retyped classes: $p");
        }
        existingValue.addClassElementMapping(
            extendElPatternMatcher.elementAt(2).input,
            properties.getProperty(p)!);
      }
    }
  }

  Map<String, String> exportProperties() {
    final properties = <String, String>{};

    if (model != null) {
      properties['model'] = model!;
    }

    if (normalizePrefix != null) {
      properties['normalize-prefix'] = normalizePrefix!;
    }

    if (choiceTypePolicy?.toString() != null) {
      properties['choicetype-policy'] = choiceTypePolicy!.toString();
    }

    if (simpleTypeRestrictionPolicy?.toString() != null) {
      properties['simpletype-restriction-policy'] =
          simpleTypeRestrictionPolicy!.toString();
    }

    if (elementRedeclarationPolicy?.toString() != null) {
      properties['element-redeclaration-policy'] =
          elementRedeclarationPolicy!.toString();
    }

    if (versionPolicy?.toString() != null) {
      properties['version-policy'] = versionPolicy!.toString();
    }

    if (typeMap.isNotEmpty) {
      for (final entry in typeMap.entries) {
        final key = entry.key.toString();
        final value = entry.value;

        if (value.relationship == ModelRelationship.retype) {
          properties['retype.$key'] = value.targetSystemClass;
        } else if (value.relationship == ModelRelationship.extend) {
          properties['extend.$key'] = value.targetSystemClass;
          for (final element in value.targetClassElementMap.keys) {
            final elementValue = value.targetClassElementMap[element]!;
            properties['extend.$key[$element]'] = elementValue;
          }
        }
      }
    }

    return properties;
  }
}

enum SimpleTypeRestrictionPolicy
    implements Comparable<SimpleTypeRestrictionPolicy> {
  useBasetype(),
  extendBasetype(),
  ignore();

  @override
  String toString() {
    switch (this) {
      case SimpleTypeRestrictionPolicy.useBasetype:
        return 'USE_BASETYPE';
      case SimpleTypeRestrictionPolicy.extendBasetype:
        return 'EXTEND_BASETYPE';
      case SimpleTypeRestrictionPolicy.ignore:
        return 'IGNORE';
    }
  }

  static SimpleTypeRestrictionPolicy? valueOf(String? name) {
    if (name == null) {
      return null;
    }

    switch (name) {
      case 'USE_BASETYPE':
        return SimpleTypeRestrictionPolicy.useBasetype;
      case 'EXTEND_BASETYPE':
        return SimpleTypeRestrictionPolicy.extendBasetype;
      case 'IGNORE':
        return SimpleTypeRestrictionPolicy.ignore;
      default:
        return null;
    }
  }

  @override
  int compareTo(SimpleTypeRestrictionPolicy other) {
    return toString().compareTo(other.toString());
  }
}

enum ChoiceTypePolicy implements Comparable<ChoiceTypePolicy> {
  useChoice(),
  expand();

  @override
  String toString() {
    switch (this) {
      case ChoiceTypePolicy.useChoice:
        return 'USE_CHOICE';
      case ChoiceTypePolicy.expand:
        return 'EXPAND';
    }
  }

  static ChoiceTypePolicy? valueOf(String? name) {
    if (name == null) {
      return null;
    }

    switch (name) {
      case 'USE_CHOICE':
        return ChoiceTypePolicy.useChoice;
      case 'EXPAND':
        return ChoiceTypePolicy.expand;
      default:
        return null;
    }
  }

  @override
  int compareTo(ChoiceTypePolicy other) {
    return toString().compareTo(other.toString());
  }
}

enum ElementRedeclarationPolicy
    implements Comparable<ElementRedeclarationPolicy> {
  discardInvalidRedeclarations(),
  renameInvalidRedeclarations(),
  failInvalidRedeclarations();

  @override
  String toString() {
    switch (this) {
      case ElementRedeclarationPolicy.discardInvalidRedeclarations:
        return 'DISCARD_INVALID_REDECLARATIONS';
      case ElementRedeclarationPolicy.renameInvalidRedeclarations:
        return 'RENAME_INVALID_REDECLARATIONS';
      case ElementRedeclarationPolicy.failInvalidRedeclarations:
        return 'FAIL_INVALID_REDECLARATIONS';
    }
  }

  static ElementRedeclarationPolicy? valueOf(String? name) {
    if (name == null) {
      return null;
    }

    switch (name) {
      case 'DISCARD_INVALID_REDECLARATIONS':
        return ElementRedeclarationPolicy.discardInvalidRedeclarations;
      case 'RENAME_INVALID_REDECLARATIONS':
        return ElementRedeclarationPolicy.renameInvalidRedeclarations;
      case 'FAIL_INVALID_REDECLARATIONS':
        return ElementRedeclarationPolicy.failInvalidRedeclarations;
      default:
        return null;
    }
  }

  @override
  int compareTo(ElementRedeclarationPolicy other) {
    return toString().compareTo(other.toString());
  }
}

enum VersionPolicy implements Comparable<VersionPolicy> {
  // @JsonValue('CURRENT')
  current(),
  // @JsonValue('INCLUDE_DEPRECATED')
  includeDeprecated();

  @override
  String toString() {
    switch (this) {
      case VersionPolicy.current:
        return 'CURRENT';
      case VersionPolicy.includeDeprecated:
        return 'INCLUDE_DEPRECATED';
    }
  }

  static VersionPolicy? valueOf(String? name) {
    if (name == null) {
      return null;
    }

    switch (name) {
      case 'CURRENT':
        return VersionPolicy.current;
      case 'INCLUDE_DEPRECATED':
        return VersionPolicy.includeDeprecated;
      default:
        return null;
    }
  }

  @override
  int compareTo(VersionPolicy other) {
    return toString().compareTo(other.toString());
  }
}
