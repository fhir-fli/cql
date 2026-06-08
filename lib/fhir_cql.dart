/// Clinical Quality Language (CQL) execution engine for Dart.
///
/// FHIR-version-independent engine with bundled R4/R5/R6 ModelResolvers in
/// a single package. Pick the resolver matching your FHIR data:
///
/// ```dart
/// import 'package:fhir_cql/fhir_cql.dart';
/// final engine = CqlEngine(modelResolver: R4ModelResolver());
/// ```
///
/// Tree-shaking strips unused resolvers + their transitive `fhir_r*` deps
/// from AOT/dart2js builds. See README.md for the full architecture.
library fhir_cql;

// New: FHIR-version boundary interfaces (fhir_cql additions).
export 'model_resolver.dart';
export 'retrieve_provider.dart';

// Ported engine + parser (copied wholesale from fhir_r4_cql, will be made
// FHIR-version-agnostic through surgical edits in subsequent dev releases).
export 'cql_to_elm/cql_to_elm.dart';
export 'engine/engine.dart';
export 'exceptions/exceptions.dart';
export 'model/model.dart';
