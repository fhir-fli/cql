/// Clinical Quality Language (CQL) translator + execution engine for Dart.
///
/// The engine, translator, ELM, and CQL System types are model-independent;
/// a data model is supplied at the boundary through the [ModelResolver] /
/// [TerminologyProvider] interfaces. (The R4 binding is being extracted into
/// a separate `fhir_r4_cql` package; until then it is bundled here.)
///
/// ```dart
/// import 'package:cql/cql.dart';
/// final result = await library.execute(context, const R4ModelResolver());
/// ```
library cql;

// FHIR-version boundary interfaces.
export 'model_resolver.dart';
export 'retrieve_provider.dart';

// Concrete resolvers — TRANSITIONAL: moving to the `fhir_r4_cql` binding
// package (phase 2 of the rename/extract).
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
