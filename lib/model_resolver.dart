/// The boundary between FHIR-version-specific code and the CQL engine.
///
/// Implementations of this interface are the **only** place in `fhir_cql`
/// where `package:fhir_r4` / `package:fhir_r5` / `package:fhir_r6` (and the
/// matching `_path` packages) may be imported. The engine itself works
/// exclusively in CQL System types (see `lib/src/engine/types/`) plus raw
/// `Map<String, dynamic>` FHIR JSON — never typed FHIR classes.
///
/// This mirrors the `ModelResolver` interface from the canonical Java
/// reference implementation [`cqframework/cql-engine`](https://github.com/cqframework/cql-engine)
/// and the `FHIRWrapper` pattern from the JavaScript reference
/// [`cqframework/cql-exec-fhir`](https://github.com/cqframework/cql-exec-fhir).
///
/// ### Rules for implementers
///
/// 1. Use the **modern** FHIRPath entry point only:
///    `FHIRPathEngine.create(WorkerContext(), hostServices).parse(expr).evaluateWithContext(...)`.
///    Never use or reference `walkFhirPath` / `executeFhirPath` — these are
///    legacy petitparser-era shims that silently mis-handle host-services
///    and lazy variable scenarios. See [feedback-no-walkfhirpath] in memory.
///
/// 2. Convert FHIR-typed values to CQL System types eagerly at the boundary.
///    Once a value flows into the engine via [resolvePath] (or back out via
///    [fromCqlSystemType]), it must be either a CQL System type, a plain
///    `Map<String, dynamic>` FHIR JSON, or a primitive String/num/bool.
///    The engine must not see `fhir_r4.FhirDateTime` etc.
///
/// 3. Handle FHIR polymorphic field resolution (`effective` →
///    `effectiveDateTime` / `effectivePeriod` / `effectiveTiming` /
///    `effectiveInstant`, `value` → `valueQuantity` / `valueString` / ...,
///    `onset` → `onsetDateTime` / `onsetAge` / ..., etc.) inside
///    [resolvePath]. The set of polymorphic prefixes is documented per
///    FHIR version in the model_info files.
abstract class ModelResolver {
  /// The FHIR version this resolver targets, as a string matching the CQL
  /// `using FHIR version` declaration. Examples: `'4.0.1'`, `'5.0.0'`,
  /// `'6.0.0-ballot2'`.
  String get fhirVersion;

  /// Resolves a single property path on a source object.
  ///
  /// `source` may be:
  /// - A raw `Map<String, dynamic>` (FHIR resource JSON);
  /// - A typed `FhirBase` from the matching `fhir_r*` package (rare in the
  ///   engine; appears when user code passes typed objects as parameters);
  /// - A CQL System type (e.g. `CqlInterval`, `CqlQuantity`) for paths like
  ///   `interval.low` / `quantity.value`.
  ///
  /// The returned value is **already converted to a CQL System type** where
  /// applicable. Resources and complex types remain as `Map<String, dynamic>`
  /// (the engine treats them opaquely and asks again via [resolvePath] to
  /// walk further into them).
  ///
  /// Returns `null` if the path doesn't resolve. Never throws on missing
  /// fields — silent null is the FHIRPath/CQL convention.
  Future<dynamic> resolvePath(dynamic source, String path);

  /// Returns `true` if [value] is an instance of the FHIR or System type
  /// named [typeName]. Handles version-specific type aliases.
  ///
  /// Examples (R4): `isType(periodMap, 'Period')` → `true`;
  /// `isType(quantityValue, 'Quantity')` → `true` whether the input is a
  /// typed `fhir_r4.Quantity`, a raw `Map`, or a `CqlQuantity`.
  bool isType(dynamic value, String typeName);

  /// Converts a FHIR-typed value (or a raw FHIR JSON Map) to its
  /// corresponding CQL System type at the engine boundary.
  ///
  /// - `Map { start, end }` with no `resourceType` → `CqlInterval<CqlDateTime>`
  /// - `Map { value, unit, system, code }` → `CqlQuantity`
  /// - `Map { coding: [...], text }` → `CqlConcept`
  /// - `String` ISO-8601 datetime / `fhir_r*.FhirDateTime` → `CqlDateTime`
  /// - Lists are mapped recursively.
  ///
  /// Returns the input unchanged if no conversion applies (e.g. already a
  /// CQL System type, or a FHIR resource Map the engine will navigate via
  /// further [resolvePath] calls).
  dynamic toCqlSystemType(dynamic value);

  /// Inverse of [toCqlSystemType]: convert a CQL System value back to a
  /// FHIR-typed value (or FHIR JSON Map) for return to user code.
  ///
  /// [fhirTypeName] specifies the target FHIR type (e.g. `'Period'`,
  /// `'Quantity'`). When unspecified or unknown, falls back to a JSON Map.
  dynamic fromCqlSystemType(dynamic value, [String? fhirTypeName]);
}
