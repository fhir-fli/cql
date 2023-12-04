import 'package:fhir/r4.dart';

import '../cql.dart';

class Context {
  // Public Constructor args
  var parent;
  dt.DateTime? executionDateTime;
  MessageListener? messageListener;

  // Private Constructor args
  TerminologyProvider? _codeService;
  Parameter? _parameters;

  // Auto-initialized properties
  var contextValues = {};
  var libraryContext = {};
  var localIdContext = {};
  var evaluatedRecords = [];

  Context(
    this.parent, [
    this._codeService,
    this._parameters,
    this.executionDateTime,
    this.messageListener,
  ]) {
    this.contextValues = {};
    this.libraryContext = {};
    this.localIdContext = {};
    this.evaluatedRecords = [];
    this.checkParameters(_parameters ?? {});
    this._parameters = _parameters ?? {};
  }

  // Getter for parameters
  Map<String, dynamic>? get parameters =>
      _parameters ?? (parent != null ? parent.parameters : null);

  // Setter for parameters
  set parameters(params) {
    checkParameters(params);
    _parameters = params;
  }

  // Getter for codeService
  TerminologyProvider? get codeService =>
      _codeService ?? (parent != null ? parent.codeService : null);

  // Setter for codeService
  void set codeService(cs) {
    _codeService = cs;
  }

  // Method: withParameters
  withParameters(params) {
    parameters = params ?? {};
    return this;
  }

  // Method: withCodeService
  withCodeService(cs) {
    codeService = cs;
    return this;
  }

  // Method: rootContext
  rootContext() {
    return parent != null ? parent.rootContext() : this;
  }

  // Method: findRecords
  Future<dynamic> findRecords(String? profile,
      [RetrieveDetails? retrieveDetails]) async {
    return parent != null
        ? await parent.findRecords(profile, retrieveDetails)
        : null;
  }

  // Method: childContext
  Context childContext([contextValues]) {
    final ctx = Context(this);
    ctx.contextValues = contextValues ?? {};
    return ctx;
  }

  // Method: getLibraryContext
  getLibraryContext(library) {
    return parent != null ? parent.getLibraryContext(library) : null;
  }

  // Method: getLocalIdContext
  Context? getLocalIdContext(String localId) {
    return parent != null ? parent.getLocalIdContext(localId) : null;
  }

  // Method: getParameter
  getParameter(String name) {
    return parent != null ? parent.getParameter(name) : null;
  }

  // Method: getParentParameter
  getParentParameter(String name) {
    if (parent != null) {
      if (parent.parameters[name] != null) {
        return parent.parameters[name];
      } else {
        return parent.getParentParameter(name);
      }
    }
  }

  int? getTimezoneOffset() {
    if (executionDateTime != null) {
      return executionDateTime.timezoneOffset;
    } else if (parent != null && parent.getTimezoneOffset != null) {
      return parent!.getTimezoneOffset()!;
    } else {
      throw Exception('No Timezone Offset has been set');
    }
  }

  CqlDateTime getExecutionDateTime() {
    if (executionDateTime != null) {
      return executionDateTime;
    } else if (parent != null && parent.getExecutionDateTime != null) {
      return parent!.getExecutionDateTime()!;
    } else {
      throw Exception('No Execution DateTime has been set');
    }
  }

  MessageListener getMessageListener() {
    if (messageListener != null) {
      return messageListener!;
    } else if (parent != null && parent.getMessageListener != null) {
      return parent!.getMessageListener()!;
    } else {
      return NullMessageListener();
    }
  }

  getValueSet(String name, library) {
    return parent != null ? parent!.getValueSet(name, library) : null;
  }

  getCodeSystem(String name) {
    return parent != null ? parent!.getCodeSystem(name) : null;
  }

  getCode(String name) {
    return parent != null ? parent!.getCode(name) : null;
  }

  getConcept(String name) {
    return parent != null ? parent!.getConcept(name) : null;
  }

  dynamic get(String? identifier) {
    if (identifier == null) {
      return null;
    } else if (contextValues[identifier] != null) {
      return contextValues[identifier];
    } else if (identifier == '\$this') {
      return contextValues;
    } else {
      return parent != null ? parent!.get(identifier) : null;
    }
  }

  void set(String identifier, dynamic value) {
    contextValues[identifier] = value;
  }

  void setLocalIdWithResult(String localId, dynamic value) {
    final ctx = localIdContext[localId];
    if (ctx == false || ctx == null || ctx.isEmpty) {
      localIdContext[localId] = value;
    }
  }

  dynamic getLocalIdResult(String localId) {
    return localIdContext[localId];
  }

  Map<String, dynamic> getAllLocalIds() {
    final localIdResults = <String, dynamic>{};
    localIdResults[parent!.source.library.identifier.id] = localIdContext;

    for (final libName in libraryContext.keys) {
      final lib = libraryContext[libName];
      supportLibraryLocalIds(lib, localIdResults);
    }
    return localIdResults;
  }

  void supportLibraryLocalIds(lib, localIdResults) {
    if (localIdResults[lib.library.source.library.identifier.id] != null) {
      mergeLibraryLocalIdResults(
        localIdResults,
        lib.library.source.library.identifier.id,
        lib.localIdContext,
      );
    } else {
      localIdResults[lib.library.source.library.identifier.id] =
          lib.localIdContext;
    }
    for (final supportLib in lib.libraryContext.values) {
      supportLibraryLocalIds(supportLib, localIdResults);
    }
  }

  void mergeLibraryLocalIdResults(localIdResults, libraryId, libraryResults) {
    for (final localId in libraryResults.keys) {
      final localIdResult = libraryResults[localId];
      final existingResult = localIdResults[libraryId][localId];
      if (existingResult == false ||
          existingResult == null ||
          existingResult.length == 0) {
        localIdResults[libraryId][localId] = localIdResult;
      }
    }
  }

  bool checkParameters(Map<String, dynamic> params) {
    for (final pName in params.keys) {
      final pVal = params[pName];
      final pDef = getParameter(pName);
      if (pVal == null) {
        return true; // Null can theoretically be any type
      }
      if (pDef == null) {
        return true; // This will happen if the parameter is declared in a different (included) library
      } else if (pDef['parameterTypeSpecifier'] != null &&
          !matchesTypeSpecifier(pVal, pDef['parameterTypeSpecifier'])) {
        throw Exception("Passed in parameter '$pName' is wrong type");
      } else if (pDef['default'] != null &&
          !matchesInstanceType(pVal, pDef['default'])) {
        throw Exception("Passed in parameter '$pName' is wrong type");
      }
    }
    return true;
  }

  bool matchesTypeSpecifier(dynamic val, dynamic spec) {
    switch (spec['type']) {
      case 'NamedTypeSpecifier':
        return matchesNamedTypeSpecifier(val, spec);
      case 'ListTypeSpecifier':
        return matchesListTypeSpecifier(val, spec);
      case 'TupleTypeSpecifier':
        return matchesTupleTypeSpecifier(val, spec);
      case 'IntervalTypeSpecifier':
        return matchesIntervalTypeSpecifier(val, spec);
      case 'ChoiceTypeSpecifier':
        return matchesChoiceTypeSpecifier(val, spec);
      default:
        return true; // default to true when we don't know
    }
  }

  bool matchesListTypeSpecifier(dynamic val, dynamic spec) {
    return (val is List) &&
        (val).every((x) => matchesTypeSpecifier(x, spec['elementType']));
  }

  bool matchesTupleTypeSpecifier(dynamic val, dynamic spec) {
    // TODO: Spec is not clear about exactly how tuples should be matched
    return (val != null &&
        val is Map &&
        !val.containsKey('isInterval') &&
        !val.containsKey('isConcept') &&
        !val.containsKey('isCode') &&
        !val.containsKey('isDateTime') &&
        !val.containsKey('isDate') &&
        !val.containsKey('isQuantity') &&
        spec['element'].every((x) =>
            !val.containsKey(x['name']) ||
            matchesTypeSpecifier(val[x['name']], x['elementType'])));
  }

  bool matchesIntervalTypeSpecifier(dynamic val, dynamic spec) {
    return (val['isInterval'] &&
        (val['low'] == null ||
            matchesTypeSpecifier(val['low'], spec['pointType'])) &&
        (val['high'] == null ||
            matchesTypeSpecifier(val['high'], spec['pointType'])));
  }

  bool matchesChoiceTypeSpecifier(dynamic val, dynamic spec) {
    return spec['choice'].any((c) => matchesTypeSpecifier(val, c));
  }

  bool matchesNamedTypeSpecifier(dynamic val, dynamic spec) {
    if (val == null) {
      return true;
    }
    switch (spec['name']) {
      case '{urn:hl7-org:elm-types:r1}Boolean':
        return val is bool;
      case '{urn:hl7-org:elm-types:r1}Decimal':
        return val is num;
      case '{urn:hl7-org:elm-types:r1}Integer':
        return val is num && val.floor() == val;
      case '{urn:hl7-org:elm-types:r1}String':
        return val is String;
      case '{urn:hl7-org:elm-types:r1}Concept':
        return val
            is CqlConcept; // assuming Concept is a custom class/interface
      case '{urn:hl7-org:elm-types:r1}Code':
        return val is FhirCode; // assuming Code is a custom class/interface
      case '{urn:hl7-org:elm-types:r1}DateTime':
        return val
            is FhirDateTime; // assuming DateTime is a custom class/interface
      case '{urn:hl7-org:elm-types:r1}Date':
        return val is FhirDate; // assuming Date is a custom class/interface
      case '{urn:hl7-org:elm-types:r1}Quantity':
        return val is Quantity; // assuming Quantity is a custom class/interface
      case '{urn:hl7-org:elm-types:r1}Time':
        return val is FhirTime && val.value != null;
      default:
        if (val is Function) {
          return val(spec);
        }
        if (val is List || val.isInterval) {
          return false;
        }
        return true;
    }
  }

  bool matchesInstanceType(dynamic val, dynamic inst) {
    if (inst['isBooleanLiteral'] != null) {
      return val is bool;
    } else if (inst['isDecimalLiteral'] != null) {
      return val is num;
    } else if (inst['isIntegerLiteral'] != null) {
      return val is num && val.floor() == val;
    } else if (inst['isStringLiteral'] != null) {
      return val is String;
    } else if (inst['isCode'] != null) {
      return val is FhirCode; // assuming Code is a custom class/interface
    } else if (inst['isConcept'] != null) {
      return val is CqlConcept; // assuming Concept is a custom class/interface
    } else if (inst['isTime'] != null && inst['isTime']()) {
      return val is FhirTime && val.value != null;
    } else if (inst['isDate'] != null) {
      return val is FhirDate; // assuming Date is a custom class/interface
    } else if (inst['isDateTime'] != null) {
      return val is DateTime; // assuming DateTime is a custom class/interface
    } else if (inst['isQuantity'] != null) {
      return val is Quantity; // assuming Quantity is a custom class/interface
    } else if (inst['isList'] != null) {
      return matchesListInstanceType(val, inst);
    } else if (inst['isTuple'] != null) {
      return matchesTupleInstanceType(val, inst);
    } else if (inst['isInterval'] != null) {
      return matchesIntervalInstanceType(val, inst);
    }
    return true; // default to true when we don't know for sure
  }

  bool matchesListInstanceType(dynamic val, dynamic list) {
    return (val is List) &&
        (val.every((x) => matchesInstanceType(x, list['elements'][0])));
  }

  bool matchesTupleInstanceType(dynamic val, dynamic tpl) {
    return (val != null &&
        val is Map &&
        !val.containsKey('isInterval') &&
        !val.containsKey('isConcept') &&
        !val.containsKey('isCode') &&
        !val.containsKey('isDateTime') &&
        !val.containsKey('isDate') &&
        !val.containsKey('isQuantity') &&
        tpl['elements'].every((x) =>
            !val.containsKey(x['name']) ||
            matchesInstanceType(val[x['name']], x['value'])));
  }

  bool matchesIntervalInstanceType(dynamic val, dynamic ivl) {
    final pointType = ivl['low'] != null ? ivl['low'] : ivl['high'];
    return (val['isInterval'] &&
        (val['low'] == null || matchesInstanceType(val['low'], pointType)) &&
        (val['high'] == null || matchesInstanceType(val['high'], pointType)));
  }
}

class PatientContext extends Context {
  Library library;
  PatientObject? patient;

  PatientContext({
    required this.library,
    this.patient,
    TerminologyProvider? codeService,
    Parameter? parameters,
    CqlDateTime? executionDateTime,
    MessageListener? messageListener,
  }) : super(
          library,
          codeService,
          parameters,
          executionDateTime ??= CqlDateTime.fromJSDate(DateTime.now()),
          messageListener ??= NullMessageListener(),
        );

  @override
  Context rootContext() {
    return this;
  }

  @override
  Context getLibraryContext(library) {
    if (libraryContext[library] == null) {
      libraryContext[library] = PatientContext(
        library: get(library) as Library,
        patient: patient,
        codeService: codeService,
        parameters: parameters,
        executionDateTime: executionDateTime,
      );
    }
    return libraryContext[library]!;
  }

  @override
  Context getLocalIdContext(String localId) {
    if (localIdContext[localId] == null) {
      localIdContext[localId] = PatientContext(
        library: get(localId) as Library,
        patient: patient,
        codeService: codeService,
        parameters: parameters,
        executionDateTime: executionDateTime,
      );
    }
    return localIdContext[localId]!;
  }

  Future<dynamic> findRecords(profile,
      [RetrieveDetails? retrieveDetails]) async {
    return patient != null
        ? patient!.findRecords(profile, retrieveDetails)
        : null;
  }
}

class UnfilteredContext extends Context {
  ElmLibrary library;
  dynamic results;

  UnfilteredContext({
    required this.library,
    this.results,
    TerminologyProvider? codeService,
    Parameter? parameters,
    dt.DateTime? executionDateTime,
    MessageListener? messageListener,
  }) : super(
          library,
          codeService,
          parameters,
          executionDateTime ??= dt.DateTime.fromJSDate(DateTime.now()),
          messageListener ??= NullMessageListener(),
        );

  @override
  Context rootContext() {
    return this;
  }

  @override
  Future<dynamic> findRecords(String? profile,
      [RetrieveDetails? retrieveDetails]) async {
    throw Exception(
        'Retrieves are not currently supported in Unfiltered Context');
  }

  @override
  Context getLibraryContext(_library) {
    throw Exception(
        'Library expressions are not currently supported in Unfiltered Context');
  }

  dynamic get(String identifier) {
    if (contextValues[identifier] != null) {
      return contextValues[identifier];
    }

    if (library.contexts
            .indexWhere((element) => element.name == 'Unfiltered') !=
        -1) {
      return library.contexts
          .firstWhere((element) => element.name == 'Unfiltered');
    }

    return results['patientResults']
        .values
        .map((pr) => pr[identifier])
        .toList();
  }
}
