import '../cql.dart';

class State {
  final Cache cache = Cache();
  final Environment environment;
  final Deque<String> currentContext = Deque<String>();
  Deque<Deque<Variable>> windows = Deque<Deque<Variable>>();
  Deque<Library> currentLibrary = Deque<Library>();
  Deque<Set<Object>> evaluatedResourceStack = Deque<Set<Object>>();
  final Map<String, Object> parameters = {};
  Map<String, Object> contextValues = {};
  DateTime? evaluationDateTime;
  DebugMap? debugMap;
  DebugResult? debugResult;

  State(this.environment) {
    setEvaluationDateTime(DateTime.now());
  }

  void setEvaluationDateTime(DateTime evaluationDateTime) {
    this.evaluationDateTime = evaluationDateTime;
    // Note: The original Java code uses ZonedDateTime and a separate DateTime class from the runtime package.
    // Dart's DateTime is being used directly here for simplicity.
  }

  // Debugging methods
  DebugAction shouldDebug(Exception e) {
    return debugMap?.shouldDebug(e) ?? DebugAction.none;
  }

  DebugAction shouldDebugElement(Element node) {
    return debugMap?.shouldDebugElement(node, currentLibrary.last) ??
        DebugAction.none;
  }

  Library getCurrentLibrary() {
    if (currentLibrary.isNotEmpty) {
      return currentLibrary.last;
    } else {
      throw StateError("No current library set.");
    }
  }

  void ensureDebugResult() {
    debugResult ??= DebugResult();
  }

  void logDebugResult(Element node, Object result, DebugAction action) {
    ensureDebugResult();
    debugResult!.logDebugResult(node, currentLibrary.last, result, action);
  }

  void logDebugError(CqlException e) {
    ensureDebugResult();
    debugResult!.logDebugError(e);
  }

  // Exception processing
  void processException(CqlException e, Element element) {
    if (e.sourceLocator == null) {
      e.sourceLocator = SourceLocator.fromNode(element, null);
      var action = shouldDebug(e);
      if (action != DebugAction.none) {
        logDebugError(e);
      }
    }
    throw e; // Rethrowing the exception for further handling
  }

  void processLocalException(Exception e, Element element, String message) {
    var ce = CqlException(
        message: message,
        cause: e,
        sourceLocator: SourceLocator.fromNode(element, null));
    var action = shouldDebug(ce);
    if (action != DebugAction.none) {
      logDebugError(ce);
    }
    throw ce; // Wrapping and rethrowing the exception
  }

  void pushEvaluatedResourceStack() {
    evaluatedResourceStack.push(<Object>{});
  }

  void init(Library library) {
    pushWindow();

    currentLibrary.push(library);

    pushEvaluatedResourceStack();
  }

  void popEvaluatedResourceStack() {
    if (evaluatedResourceStack.isEmpty) {
      throw StateError(
          "Attempted to pop the evaluatedResource stack when it's empty");
    }
    if (evaluatedResourceStack.length == 1) {
      throw StateError(
          "Attempted to pop the evaluatedResource stack when only the root remains");
    }
    evaluatedResourceStack.removeLast();
  }

  void clearEvaluatedResources() {
    evaluatedResourceStack.clear();
    pushEvaluatedResourceStack();
  }

  Set<Object> getEvaluatedResources() {
    if (evaluatedResourceStack.isEmpty) {
      throw StateError(
          "Attempted to get the evaluatedResource stack when it's empty");
    }
    return evaluatedResourceStack.last;
  }

  void setParameters(Library library, Map<String, Object>? parameters) {
    parameters?.forEach((key, value) {
      setParameter(null, key, value);
    });
  }

  void setParameter(String? libraryName, String name, Object value) {
    var fullName = libraryName != null
        ? "${currentLibrary.last.identifier?.id}.$name"
        : name;
    parameters[fullName] = value;
  }

  Variable? resolveVariable(String name) {
    for (var window in windows) {
      for (var variable in window) {
        if (variable.name == name) {
          return variable;
        }
      }
    }
    return null; // Variable not found
  }

  Variable? mustResolveVariable(String name, bool mustResolve) {
    var result = resolveVariable(name);
    if (mustResolve && result == null) {
      throw CqlException(message: "Could not resolve variable reference $name");
    }
    return result;
  }

  // Adjusted to use List for simulating Deque behavior
  void pushWindow() {
    windows.add(Deque<Variable>());
  }

  void popWindow() {
    windows.pop();
  }

  void push(Variable variable) {
    if (windows.isNotEmpty) {
      windows.last.add(variable);
    }
  }

  void pop() {
    if (windows.isNotEmpty && windows.last.isNotEmpty) {
      windows.last.removeLast();
    }
  }

  Object? resolveAlias(String name) {
    List<Object> ret = [];
    bool isList = false;

    for (var window in windows) {
      for (var variable in window) {
        if (variable.name == name) {
          isList |= variable.isList;
          ret.add(variable.value);
        }
      }
    }

    return isList ? ret : ret.last;
  }

  Object? resolveIdentifierRef(String name) {
    for (var window in windows) {
      for (var variable in window) {
        var value = variable.value;
        if (value is Tuple) {
          for (var key in value.element ?? <TupleElement>[]) {
            if (key.name == name) {
              return value.element!.where((element) => element.name == name);
            }
          }
        }
        try {
          return environment.resolvePath(value, name);
        } catch (e) {
          // Ignored
        }
      }
    }

    throw CqlException(message: "Cannot resolve identifier $name");
  }

  void logDebugMessage(SourceLocator locator, String message) {
    ensureDebugResult();
    debugResult!.logDebugError(CqlException(
        sourceLocator: locator, message: message, severity: Severity.message));
  }

  void logDebugWarning(SourceLocator locator, String message) {
    ensureDebugResult();
    debugResult!.logDebugError(CqlException(
        sourceLocator: locator, message: message, severity: Severity.warning));
  }

  void logDebugTrace(SourceLocator locator, String message) {
    ensureDebugResult();
    debugResult!.logDebugError(CqlException(
        sourceLocator: locator, message: message, severity: Severity.trace));
  }

  // Assuming Severity is an enum with values like message, warning, and trace
  // Assuming DebugResult has methods like logDebugMessage, logDebugWarning, and logDebugTrace

  CompiledLibrary? loadAndValidate(VersionedIdentifier libraryIdentifier) {
    List<CqlCompilerException> errors = [];
    CompiledLibrary? library = environment.libraryManager
        .resolveLibrary(libraryIdentifier, errors: errors);
    if (errors.isNotEmpty) {
      throw CqlException(
          message:
              "Library ${libraryIdentifier.id}${libraryIdentifier.version != null ? '-${libraryIdentifier.version}' : ''} loaded, but had errors: ${errors.map((e) => e.message).join(", ")}");
    }

    validateTerminologyRequirements(library);
    validateDataRequirements(library);
    // Additional validations can be implemented here

    return library;
  }

  void validateTerminologyRequirements(CompiledLibrary? library) {
    // Implement based on your project's requirements
  }

  void validateDataRequirements(CompiledLibrary? library) {
    // Implement based on your project's requirements
  }
}
