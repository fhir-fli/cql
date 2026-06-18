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

// FHIR-version boundary interfaces (fhir_cql additions).
export 'model_resolver.dart';
export 'retrieve_provider.dart';

// Concrete per-FHIR-version resolvers. Tree-shaking strips the ones a
// consumer doesn't construct. (R5/R6 added as they land.)
export 'resolvers/r4/r4_model_resolver.dart';
export 'resolvers/r4/r4_terminology_provider.dart';

// CQL System primitive types (Boolean, Integer, Long, Decimal, String,
// Date, Time, DateTime + base classes). Engine code uses these as the
// strict input/output types at all internal boundaries.
export 'cql_primitives/cql_primitives.dart';

// Ported engine + parser.
export 'cql_to_elm/cql_to_elm.dart';
export 'engine/engine.dart';
export 'exceptions/exceptions.dart';
export 'model/model.dart';
