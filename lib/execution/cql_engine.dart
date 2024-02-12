// Assuming necessary Dart equivalents of the imported Java packages exist
// or creating stubs for external dependencies not directly translatable.

import '../cql.dart';

class CqlEngine {
  final Environment environment;
  final State state;
  final Set<Options> engineOptions;
  final EvaluationVisitor evaluationVisitor = EvaluationVisitor();

  CqlEngine(this.environment, [Set<Options>? engineOptions])
      : state = State(environment),
        engineOptions = engineOptions ?? {Options.enableExpressionCaching} {
    if (this.engineOptions.contains(Options.enableExpressionCaching)) {
      cache.setExpressionCaching(true);
    }
  }

  Environment getEnvironment() => environment;

  State getState() => state;

  Cache get cache => state.cache;

  @Deprecated('Use getEnvironment instead')
  EvaluationVisitor getEvaluationVisitor() => evaluationVisitor;

  @Deprecated("Use evaluateWithLibraryIdentifier instead")
  ExpressionResult? expression(
      VersionedIdentifier libraryIdentifier, String expressionName,
      [DateTime? evaluationDateTime]) {
    var set = <String>{expressionName};
    var result = evaluate(
        libraryIdentifier: libraryIdentifier,
        expressions: set,
        evaluationDateTime: evaluationDateTime);
    return result.forExpression(expressionName);
  }

  @Deprecated("Use evaluateWithLibraryIdentifier instead")
  ExpressionResult? expressionByName(
      VersionedIdentifier libraryIdentifier, String expressionName) {
    return expression(libraryIdentifier, expressionName, null);
  }

// Consolidated evaluate method in Dart with optional named parameters
  EvaluationResult evaluate({
    VersionedIdentifier? libraryIdentifier,
    String? libraryName,
    Set<String>? expressions,
    MapEntry<String, Object>? contextParameterEntry,
    Map<String, Object>? parameters,
    DebugMap? debugMap,
    DateTime?
        evaluationDateTime, // Using DateTime as Dart's equivalent to ZonedDateTime
  }) {
    // Determine the libraryIdentifier if only libraryName is provided
    libraryIdentifier ??= VersionedIdentifier(id: libraryName);

    // Ensure libraryIdentifier is not null
    if (libraryIdentifier.id == null) {
      throw ArgumentError("libraryIdentifier cannot be null.");
    }

    Library library = loadAndValidate(libraryIdentifier);

    expressions ??= getExpressionSet(library);

    initializeState(library, debugMap, evaluationDateTime);
    setParametersForContext(library, contextParameterEntry, parameters);

    return evaluateExpressions(expressions);
  }

  void initializeState(
      Library library, DebugMap? debugMap, DateTime? evaluationDateTime) {
    state.setEvaluationDateTime(evaluationDateTime ?? DateTime.now());
    state.init(library);
    state.debugMap = debugMap;
  }

  EvaluationResult evaluateExpressions(Set<String> expressions) {
    final result = EvaluationResult();

    for (final expression in expressions) {
      final ExpressionDef def =
          Libraries.resolveExpressionRef(expression, state.getCurrentLibrary());

      if (def is FunctionDef) {
        continue;
      }

      try {
        final object = evaluationVisitor.visitExpressionDef(def, state);
        result.expressionResults[expression] =
            ExpressionResult(object, state.getEvaluatedResources());
      } on CqlException catch (ce) {
        processException(ce, def);
      } catch (e) {
        processException(
            CqlException(
                message:
                    "Error evaluating expression $expression: ${e.toString()}"),
            def);
      }
    }

    result.debugResult = state.debugResult;

    return result;
  }

  void setParametersForContext(
      Library library,
      MapEntry<String, Object>? contextParameter,
      Map<String, Object>? parameters) {
    if (contextParameter != null) {
      state.contextValues[contextParameter.key] = contextParameter.value;
    }

    state.setParameters(library, parameters);
  }

  Library loadAndValidate(VersionedIdentifier libraryIdentifier) {
    var errors = <CqlCompilerException>[];
    var library = environment.libraryManager
        .resolveLibrary(libraryIdentifier, errors: errors)
        ?.library;

    if (library == null) {
      throw CqlException(
          message: "Unable to load library ${libraryIdentifier.id}"
              "${libraryIdentifier.version != null ? '-${libraryIdentifier.version}' : ''}");
    }

    if (CqlCompilerException.hasErrors(errors)) {
      var errorMessages = errors.map((e) => e.message).join(", ");
      throw CqlException(
          message: "Library ${libraryIdentifier.id}"
              "${libraryIdentifier.version != null ? '-${libraryIdentifier.version}' : ''} loaded, but had errors: $errorMessages");
    }

    if (engineOptions.contains(Options.enableValidation)) {
      validateTerminologyRequirements(library);
      validateDataRequirements(library);
      // TODO: Validate Expressions as well?
    }

    library.includes?.def.forEach((include) {
      loadAndValidate(VersionedIdentifier(
        system: NamespaceManager.getUriPart(include.path),
        id: NamespaceManager.getNamePart(include.path),
        version: include.version,
      ));
    });

    return library;
  }

  void validateDataRequirements(Library library) {
    if (library.usings?.def.isNotEmpty ?? false) {
      for (var using in library.usings!.def) {
        if (using.uri == "urn:hl7-org:elm-types:r1") continue;

        if (!environment.dataProviders.containsKey(using.uri)) {
          throw ArgumentError(
              "Library ${library.identifier} is using ${using.uri} and no data provider is registered for uri ${using.uri}.");
        }
      }
    }
  }

  void validateTerminologyRequirements(Library library) {
    if ((library.codeSystems?.def.isNotEmpty ?? false) ||
        (library.codes?.def.isNotEmpty ?? false) ||
        (library.valueSets?.def.isNotEmpty ?? false)) {
      if (environment.terminologyProvider == null) {
        throw ArgumentError(
            "Library ${library.identifier == null ? '' : getLibraryDescription(library.identifier!)}"
            " has terminology requirements and no terminology provider is registered.");
      }
    }
  }

  String getLibraryDescription(VersionedIdentifier libraryIdentifier) {
    return "${libraryIdentifier.id}${libraryIdentifier.version != null ? '-${libraryIdentifier.version}' : ''}";
  }

  Set<String> getExpressionSet(Library library) {
    Set<String> expressionNames = <String>{};
    library.statements?.def.forEach((ed) {
      expressionNames.add(ed.name);
    });
    return expressionNames;
  }

  void processException(CqlException e, Element element) {
    if (e.sourceLocator == null) {
      e.sourceLocator = SourceLocator.fromNode(element, null);
      DebugAction action = state.shouldDebug(e);
      if (action != DebugAction.none) {
        state.logDebugError(e);
      }
    }
    throw e; // Dart does not have checked exceptions, so this rethrow is always unchecked
  }

  void processLocalException(Exception e, Element element, String message) {
    var ce = CqlException(
        message: message,
        cause: e,
        sourceLocator: SourceLocator.fromNode(element, null));
    DebugAction action = state.shouldDebug(ce);
    if (action != DebugAction.none) {
      state.logDebugError(ce);
    }
    throw ce; // Rethrowing the wrapped exception
  }
}
