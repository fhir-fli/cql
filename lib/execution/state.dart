import 'dart:collection';

import '../cql.dart';

class State {
  final Cache cache = Cache();
  final Environment environment;
  final List<Library> currentLibrary = <Library>[];
  List<String> currentContext = <String>[];
  List<HashSet<Object>> evaluatedResourceStack = <HashSet<Object>>[];
  final Map<String, Object> parameters = {};
  Map<String, Object> contextValues = {};
  late DateTime evaluationDateTime;
  DebugMap? debugMap;
  DebugResult? debugResult;

  State(this.environment) {
    setEvaluationDateTime(DateTime.now());
  }

  Cache getCache() => cache;

  Environment getEnvironment() => environment;

  Library? getCurrentLibrary() =>
      currentLibrary.isNotEmpty ? currentLibrary.first : null;

  void setParameters(Library library, Map<String, Object> parameters) {
    parameters.forEach((key, value) {
      setParameter(null, key, value);
    });
  }

  void setParameter(String? libraryName, String name, Object value) {
    // Implementation for setting parameters
  }

  bool enterLibrary(String? libraryName) {
    // Implementation for entering a library
    return false;
  }

  void exitLibrary(bool enteredLibrary) {
    // Implementation for exiting a library
  }

  Map<String, Object> getContextValues() => contextValues;

  void setContextValues(Map<String, Object> newContextValues) {
    contextValues = newContextValues;
  }

  DebugMap? getDebugMap() => debugMap;

  void setDebugMap(DebugMap newDebugMap) {
    debugMap = newDebugMap;
  }

  DebugResult? getDebugResult() => debugResult;

  void setEvaluationDateTime(DateTime newEvaluationDateTime) {
    evaluationDateTime = newEvaluationDateTime;
  }

  void logDebugResult(Element node, Object result, DebugAction action) {
    // Ensure a DebugResult instance is available
    debugResult ??= DebugResult();
    debugResult!.logDebugResult(node, getCurrentLibrary()!, result, action);
  }

  DateTime getEvaluationDateTime() => evaluationDateTime;

  void ensureDebugResult() {
    debugResult ??= DebugResult();
  }

  void logDebugMessage(SourceLocator locator, String message) {
    ensureDebugResult();
    debugResult!.logDebugError(CqlException(
        message: message, sourceLocator: locator, severity: Severity.message));
  }

  void logDebugWarning(SourceLocator locator, String message) {
    ensureDebugResult();
    debugResult!.logDebugError(CqlException(
        message: message, sourceLocator: locator, severity: Severity.warning));
  }

  void logDebugTrace(SourceLocator locator, String message) {
    ensureDebugResult();
    debugResult!.logDebugError(CqlException(
        message: message, sourceLocator: locator, severity: Severity.trace));
  }

  void logDebugError(CqlException e) {
    ensureDebugResult();
    debugResult!.logDebugError(e);
  }

  void pushWindow() {
    // Placeholder for method logic
  }

  void popWindow() {
    // Placeholder for method logic
  }

  void enterContext(String context) {
    currentContext = [
      context,
      ...currentContext,
    ];
  }

  void exitContext() {
    if (currentContext.isNotEmpty) {
      currentContext.removeAt(0);
    }
  }

  String? getCurrentContext() {
    return currentContext.isNotEmpty ? currentContext.first : null;
  }

  void setContextValue(String context, Object contextValue) {
    contextValues[context] = contextValue;
    // You might need to clear or update related caches or states here
  }

  // Utility method to ensure the evaluation of resources is properly initialized
  void pushEvaluatedResourceStack() {
    evaluatedResourceStack = [HashSet<Object>(), ...evaluatedResourceStack];
  }

  void popEvaluatedResourceStack() {
    if (evaluatedResourceStack.isNotEmpty) {
      evaluatedResourceStack.removeAt(0);
    }
  }

  Set<Object> getEvaluatedResources() {
    return evaluatedResourceStack.isNotEmpty
        ? evaluatedResourceStack.first
        : <Object>{};
  }

  // Method to resolve variables, considering all the contexts and windows
  Variable? resolveVariable(String name, {bool mustResolve = false}) {
    // Placeholder for resolving variable logic, iterating over windows and contexts
    return null; // Or throw an exception if mustResolve is true and the variable is not found
  }
}
