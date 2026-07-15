/// The boundary between FHIR-version-specific code and the CQL engine.
///
/// Implementations of this interface are the **only** place in `fhir_cql`
/// where `package:fhir_r4` / `package:fhir_r5` / `package:fhir_r6` (and the
/// matching `_path` packages) may be imported. The engine itself works
/// exclusively in CQL System types (see `lib/engine/types/`) plus raw
/// `Map<String, dynamic>` FHIR JSON — never typed FHIR classes.
///
/// This mirrors the `ModelResolver` interface from the canonical Java
/// reference implementation
/// [`cqframework/clinical_quality_language`](https://github.com/cqframework/clinical_quality_language)
/// (`Src/java/engine/src/commonMain/kotlin/org/opencds/cqf/cql/engine/model/ModelResolver.kt`)
/// and the `FHIRWrapper` pattern from the JavaScript reference
/// [`cqframework/cql-exec-fhir`](https://github.com/cqframework/cql-exec-fhir).
///
/// ### Rules for implementers
///
/// 1. Use the **modern** FHIRPath entry point only:
///    `FHIRPathEngine.create(WorkerContext(), hostServices).parse(expr)
///    .evaluateWithContext(...)`.
///    Never use or reference `walkFhirPath` / `executeFhirPath` — these are
///    legacy petitparser-era shims that silently mis-handle host-services
///    and lazy variable scenarios. See `feedback_no_walkfhirpath` in memory.
///
/// 2. Convert FHIR-typed values to CQL System types eagerly at the boundary.
///    Once a value flows into the engine via [resolvePath] or
///    [toCqlSystemType],
///    it must be either a CQL System type, a plain `Map<String, dynamic>`
///    FHIR JSON, or a primitive `String`/`num`/`bool`. The engine must not
///    see `fhir_r4.FhirDateTime` etc.
///
/// 3. Handle FHIR polymorphic field resolution (`effective` →
///    `effectiveDateTime` / `effectivePeriod` / `effectiveTiming` /
///    `effectiveInstant`, `value` → `valueQuantity` / `valueString` / …,
///    `onset` → `onsetDateTime` / `onsetAge` / …, etc.) inside
///    [resolvePath]. The set of polymorphic prefixes is documented per
///    FHIR version in the model_info files.
abstract class ModelResolver {
  // ===========================================================================
  // Version + namespace metadata
  // ===========================================================================

  /// FHIR version targeted, matching the CQL `using FHIR version` declaration.
  /// Examples: `'4.0.1'`, `'5.0.0'`, `'6.0.0-ballot2'`.
  String get fhirVersion;

  /// Type-system namespace URI(s) this resolver answers for. CQL type
  /// specifiers carry a `namespace.namespaceURI`; the engine dispatches to
  /// the resolver whose [packageNames] includes that URI.
  ///
  /// Java equivalent: `ModelResolver.getPackageNames(): Collection<String>`.
  /// Typical R4 returns: `['http://hl7.org/fhir', 'http://hl7.org/fhir/r4']`.
  List<String> get packageNames;

  // ===========================================================================
  // Type checks (the CQL `is` and `as` operators)
  // ===========================================================================

  /// Returns `true` if [value] is an instance of the FHIR or System type
  /// named [typeName] in this resolver's package(s).
  ///
  /// This is the implementation behind `value is FHIR.code` / `value is
  /// System.Boolean` etc. when the engine dispatches to this resolver.
  /// Handles version-specific type aliases and FHIR subtype relationships
  /// (e.g. `FhirCode is FhirString` → `true` per the FHIR class hierarchy).
  ///
  /// Java equivalent:
  /// `ModelResolver.is(value: Any?, type: JavaClass<*>): Boolean?`.
  bool? is_(dynamic value, String typeName);

  /// Returns [value] cast to [typeName] if compatible, otherwise:
  /// - if [isStrict] is `true`, throws;
  /// - if `false`, returns `null`.
  ///
  /// Java equivalent: `ModelResolver.as(value: Any?, type: JavaClass<*>,
  /// isStrict: Boolean): Any?`.
  dynamic as_(dynamic value, String typeName, {bool isStrict = false});

  // ===========================================================================
  // Type discovery
  // ===========================================================================

  /// Resolves [typeName] (in this resolver's namespace) to a Dart `Type`
  /// suitable for reflection / instance creation. Returns `null` if unknown.
  ///
  /// Java equivalent:
  /// `ModelResolver.resolveType(typeName: String?): JavaClass<*>?`.
  Type? resolveType(String typeName);

  /// Returns the type name for [value] in this resolver's namespace,
  /// e.g. `'Patient'` for a FHIR Patient resource, `'DateTime'` for a
  /// CqlDateTime. Returns `null` if [value] doesn't map.
  ///
  /// Java equivalent: `ModelResolver.resolveType(value: Any?): JavaClass<*>?`.
  String? resolveTypeOf(dynamic value);

  /// Resolves the *static* type of a dotted model path such as
  /// `Observation.value` or `Patient.name`, for return-type inference (used by
  /// the engine's `Property.getReturnTypes`).
  ///
  /// Returns the leaf field's model type name and whether it is a collection,
  /// or `null` if the path can't be resolved in this model. Type names are in
  /// the resolver's own namespace (e.g. FHIR `'CodeableConcept'`); callers map
  /// them to ELM/System types as needed.
  ({String type, bool isList})? resolveTypePath(String path);

  // ===========================================================================
  // Property access (the FHIRPath-style path resolution)
  // ===========================================================================

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
  /// applicable (see [toCqlSystemType]). Resources and complex types remain
  /// as `Map<String, dynamic>`.
  ///
  /// Returns `null` if the path doesn't resolve. Never throws on missing
  /// fields — silent null is the FHIRPath/CQL convention.
  ///
  /// Java equivalent:
  /// `ModelResolver.resolvePath(target: Any?, path: String): Any?`.
  Future<dynamic> resolvePath(dynamic source, String path);

  /// Sets the value at [path] on [target] to [value], returning the modified
  /// target. Used by the engine for `set` / output-parameter scenarios.
  ///
  /// Java equivalent:
  /// `ModelResolver.setValue(target: Any?, path: String, value: Any?)`.
  dynamic setValue(dynamic target, String path, dynamic value);

  /// Returns the resource id of [target] if it's a FHIR resource, else `null`.
  ///
  /// Java equivalent: `ModelResolver.resolveId(target: Any?): String?`.
  String? resolveId(dynamic target);

  /// Returns the path on a resource of [targetType] that links it to a
  /// resource of [contextType] (the CQL `context` declaration's anchor).
  ///
  /// Example: for context Patient, `getContextPath('Patient', 'Encounter')`
  /// returns `'subject'` (Encounter.subject references Patient).
  ///
  /// Java equivalent: `ModelResolver.getContextPath(contextType: String?,
  /// targetType: String?): String?`.
  String? getContextPath(String? contextType, String? targetType);

  // ===========================================================================
  // Instance creation
  // ===========================================================================

  /// Creates an empty instance of the type named [typeName]. Used by CQL's
  /// instance-construction expression (`{ field1: ..., field2: ... }` typed
  /// to a named type) and by the parameter system.
  ///
  /// Java equivalent: `ModelResolver.createInstance(typeName: String?): Any?`.
  dynamic createInstance(String typeName);

  // ===========================================================================
  // Deep equality (the CQL `=` and `~` operators when not handled inline)
  // ===========================================================================

  /// Three-valued deep equality. Returns `true`/`false` when comparable;
  /// `null` when either operand is null and the spec demands propagation.
  ///
  /// Java equivalent:
  /// `ModelResolver.objectEqual(left: Any?, right: Any?): Boolean?`.
  bool? objectEqual(dynamic left, dynamic right);

  /// CQL `~` operator on FHIR-typed values. Type-aware equivalence per the
  /// FHIR datatypes specification (e.g. `Quantity` ignores comparator/unit
  /// canonicalization; `Period` is start-exclusive/end-inclusive).
  ///
  /// Java equivalent:
  /// `ModelResolver.objectEquivalent(left: Any?, right: Any?): Boolean?`.
  bool? objectEquivalent(dynamic left, dynamic right);

  // ===========================================================================
  // System-type conversion (no direct Java equivalent — this is the boundary
  // contract that keeps the engine clean of FHIR types)
  // ===========================================================================

  /// Converts a FHIR-typed value (or raw FHIR JSON Map) to its corresponding
  /// CQL System type at the engine boundary.
  ///
  /// - `Map { start, end }` with no `resourceType` → `CqlInterval<CqlDateTime>`
  /// - `Map { value, unit, system, code }` → `CqlQuantity`
  /// - `Map { coding: [...], text }` → `CqlConcept`
  /// - ISO-8601 [String] / `fhir_r*.FhirDateTime` → `CqlDateTime`
  /// - Lists are mapped recursively.
  ///
  /// Returns the input unchanged if no conversion applies.
  dynamic toCqlSystemType(dynamic value);

  /// Inverse of [toCqlSystemType]: convert a CQL System value back to a
  /// FHIR-typed value (or FHIR JSON Map) for return to user code.
  ///
  /// [fhirTypeName] specifies the target FHIR type (e.g. `'Period'`,
  /// `'Quantity'`). When unspecified or unknown, falls back to a JSON Map.
  dynamic fromCqlSystemType(dynamic value, [String? fhirTypeName]);

  /// Decomposes a model object into its child elements as a FHIR-JSON
  /// `name → value` map, or returns `null` if [value] is not a model object.
  ///
  /// This is the model operation behind CQL's `Children` / `Descendents`
  /// and implicit identifier resolution: enumerating the elements of a
  /// structured value requires model knowledge (which fields the type has),
  /// so it belongs on the resolver. A raw FHIR JSON `Map` is already in this
  /// form and is the caller's responsibility — this method exists to bring
  /// *typed* model objects (e.g. `fhir_r4.Patient`) into the same shape.
  Map<String, dynamic>? toElementMap(dynamic value);
}
