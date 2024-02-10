import 'dart:collection';

import '../cql.dart';

class Cache {
  bool _enableExpressionCache = false;
  final Map<FunctionRef, FunctionDef> _functionCache = {};
  final LinkedHashMap<VersionedIdentifier, Map<String, ExpressionResult>>
      _expressions = LinkedHashMap();

  Cache() {
    // Dart does not support directly limiting the size of a map like Java's
    // LinkedHashMap with a removeEldestEntry method. If you need to limit the
    // number of entries in _expressions, you would need to manually implement
    //logic to check the size and remove the eldest entry when necessary,
    // possibly by overriding some methods or handling it externally.
  }

  Map<VersionedIdentifier, Map<String, ExpressionResult>> get expressions =>
      _expressions;

  void setExpressionCaching(bool enable) {
    _enableExpressionCache = enable;
  }

  Map<String, ExpressionResult> _constructLibraryExpressionHashMap() {
    // Emulating Java's LinkedHashMap with access order based removal policy.
    // This is a basic implementation and might need adjustments based on
    // actual access patterns and performance considerations.
    var map = LinkedHashMap<String, ExpressionResult>(
      equals: (a, b) => a == b,
      hashCode: (key) => key.hashCode,
    );
    return map;
  }

  Map<String, ExpressionResult> getExpressionCache(
      VersionedIdentifier libraryId) {
    return _expressions.putIfAbsent(
        libraryId, () => _constructLibraryExpressionHashMap());
  }

  bool isExpressionCached(VersionedIdentifier libraryId, String name) {
    var libraryCache = getExpressionCache(libraryId);
    return libraryCache.containsKey(name);
  }

  bool get isExpressionCachingEnabled => _enableExpressionCache;

  void cacheExpression(
      VersionedIdentifier libraryId, String name, ExpressionResult er) {
    var libraryCache = getExpressionCache(libraryId);
    libraryCache[name] = er;
  }

  ExpressionResult? getCachedExpression(
      VersionedIdentifier libraryId, String name) {
    var libraryCache = getExpressionCache(libraryId);
    return libraryCache[name];
  }

  Map<FunctionRef, FunctionDef> get functionCache => _functionCache;

  void cacheFunctionDef(FunctionRef functionRef, FunctionDef functionDef) {
    _functionCache[functionRef] = functionDef;
  }

  FunctionDef? getCachedFunctionDef(FunctionRef functionRef) {
    return _functionCache[functionRef];
  }
}
