/// Model-independent CQL (Clinical Quality Language) engine and
/// CQL-to-ELM translator. FHIR-free: concrete data access is supplied via
/// [ModelResolver] / [RetrieveProvider], implemented by the
/// `fhir_r4_cql` / `fhir_r5_cql` / `fhir_r6_cql` binding packages.
///
/// This is the curated **public API**. It intentionally exposes only what a
/// consumer needs to translate CQL, execute a library, and work with the
/// results:
///
/// - [libraryFromCql] — translate CQL source text into an executable
///   [CqlLibrary] (also loadable from ELM JSON via `CqlLibrary.fromJson`,
///   executable via `execute`).
/// - The CQL System result types — the primitives (`CqlInteger`, `CqlDecimal`,
///   `CqlDateTime`, …) and the composite value types (`CqlCode`, `CqlConcept`,
///   `CqlValueSet`, `CqlInterval`, …) that execution returns.
/// - The data-model boundary interfaces [ModelResolver], [RetrieveProvider],
///   and the terminology boundary, which the FHIR binding packages implement.
/// - The exception / diagnostic types.
///
/// The ELM expression tree, the ANTLR-based translator internals, and the ELM
/// model classes are implementation details and are **not** exported here. Code
/// that genuinely needs to build or inspect ELM programmatically can import the
/// specific `package:cql/src/...` libraries directly, at the usual
/// no-stability-guarantee cost of depending on internals.
library;

// CQL System primitive result types (Boolean, Integer, Long, Decimal, String,
// Date, Time, DateTime + base classes).
export 'src/cql_primitives/cql_primitives.dart';
// CQL System composite value types (Code, Concept, CodeSystem, ValueSet,
// Interval, Tuple, …) and the terminology boundary interface.
export 'src/engine/types/types.dart';
// Diagnostics and error handling.
export 'src/exceptions/exceptions.dart';
// The entry point: CQL source text -> executable CqlLibrary.
export 'src/cql_to_elm/library_from_cql.dart';
// The executable library and its manager (the return/param types of the
// entry point). The other ELM definition types stay internal.
export 'src/engine/library/library.dart' show CqlLibrary, LibraryManager;
// The data-model boundary interfaces, implemented by the fhir_r*_cql bindings.
export 'src/model_resolver.dart';
export 'src/retrieve_provider.dart';
