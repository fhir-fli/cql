import 'package:cql/src/engine/engine.dart' show CqlLibrary;
import 'package:cql/src/engine/library/cql_library.dart' show CqlLibrary;
import 'package:cql/src/engine/library/library.dart' show CqlLibrary;
import 'package:cql/src/engine/types/terminology_provider.dart';
import 'package:cql/src/internal.dart' show CqlLibrary;
import 'package:cql/src/model_resolver.dart';

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

  /// The optional [TerminologyProvider] for value-set membership that needs
  /// resolution beyond locally-supplied expansions. Accessed via
  /// [getTerminologyProvider].
  static const String terminologyProvider = 'terminologyProvider';
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

/// Returns the optional [TerminologyProvider] from the execution [context],
/// or `null` if none was supplied. Terminology is optional: libraries that
/// only rely on locally-supplied value-set expansions
/// (`context['_valueSets']`) run without a provider.
TerminologyProvider? getTerminologyProvider(Map<String, dynamic> context) =>
    context[ContextKey.terminologyProvider] as TerminologyProvider?;
