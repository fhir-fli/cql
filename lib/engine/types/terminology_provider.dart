// Terminology resolution for CQL membership operators.
import 'package:cql/cql.dart';

class TerminologyProviderException implements Exception {
  String message;
  TerminologyProviderException(this.message);

  @override
  String toString() => "TerminologyProviderException: $message";
}

/// Resolves value-set membership against a terminology source (a canonical
/// resource cache, a terminology server, or similar).
///
/// This is the model-independent terminology contract: the engine's
/// membership operators (`in ValueSet`, `InValueSet`, `AnyInValueSet`) work
/// in CQL System terms (a code's `system`/`code` and a [CqlValueSet]); the
/// FHIR-specific resolution — fetching a FHIR `ValueSet` resource and
/// checking its expansion/compose rules — lives in a FHIR binding
/// implementation (`fhir_r*`), never in the engine. Mirrors the
/// `TerminologyProvider` / `CodeService` of the Java and JS reference engines.
///
/// The engine reaches an implementation through the execution context (see
/// `getTerminologyProvider`); it is optional — a library that only uses
/// locally-supplied value-set expansions (`context['_valueSets']`) needs no
/// provider at all.
abstract class TerminologyProvider {
  /// Whether the code identified by [system]/[code] is a member of
  /// [valueSet], resolving the value set from the terminology source as
  /// needed.
  ///
  /// Returns `null` when membership cannot be determined (e.g. the value set
  /// can't be resolved) — the CQL "unknown" result. Throws
  /// [TerminologyProviderException] only on an actual resolution error.
  Future<bool?> codeInValueSet({
    String? system,
    required String? code,
    required CqlValueSet valueSet,
  });
}
