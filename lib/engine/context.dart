import '../model_resolver.dart';

/// Reserved context keys used by the engine.
///
/// The engine threads execution state through a `Map<String, dynamic>`
/// (cf. cqframework's `Context`). These constants name the slots the
/// engine itself owns; user-supplied parameters live under their own names
/// and must not collide with these.
abstract final class ContextKey {
  /// The active [CqlLibrary] being executed.
  static const String library = 'library';

  /// The wall-clock time at which the engine started executing this
  /// invocation (used by CQL `Now()` etc.).
  static const String startTimestamp = 'startTimestamp';

  /// The [ModelResolver] for the FHIR version this execution operates on.
  /// Set by [CqlLibrary.execute]; accessed via [getModelResolver] /
  /// [requireModelResolver].
  static const String modelResolver = 'modelResolver';
}

/// Returns the [ModelResolver] from the execution [context], or `null` if
/// the caller did not provide one. Most engine code should use
/// [requireModelResolver] instead — a missing resolver is a programming
/// error, not a runtime condition.
ModelResolver? getModelResolver(Map<String, dynamic> context) =>
    context[ContextKey.modelResolver] as ModelResolver?;

/// Returns the [ModelResolver] from the execution [context], or throws a
/// [StateError] if none is set. This is the canonical accessor for engine
/// operators that need FHIR-version-specific behavior.
///
/// ```dart
/// final mr = requireModelResolver(context);
/// if (mr.is_(value, 'code') ?? false) {
///   // value is a FHIR code primitive in this FHIR version
/// }
/// ```
ModelResolver requireModelResolver(Map<String, dynamic> context) {
  final mr = getModelResolver(context);
  if (mr == null) {
    throw StateError(
      'No ModelResolver in execution context. Construct CqlLibrary.execute '
      'with `modelResolver: R4ModelResolver()` (or R5/R6).',
    );
  }
  return mr;
}
