/// Clinical Quality Language (CQL) translator + execution engine for Dart.
///
/// Model-independent: the engine, translator, ELM, and CQL System types here
/// have **no** dependency on any FHIR version. A data model is supplied at
/// the boundary through the [ModelResolver] / [TerminologyProvider]
/// interfaces; FHIR implementations live in separate binding packages (e.g.
/// `fhir_r4_cql`), the analogue of `cql-exec-fhir` / `engine.fhir`.
///
/// ```dart
/// import 'package:cql/cql.dart';
/// import 'package:fhir_r4_cql/fhir_r4_cql.dart'; // supplies R4ModelResolver
/// final result = await library.execute(context, const R4ModelResolver());
/// ```
library cql;

// The data-model boundary interfaces. Concrete FHIR implementations live in
// the `fhir_r*_cql` binding packages.
export 'model_resolver.dart';
export 'retrieve_provider.dart';

// CQL System primitive types (Boolean, Integer, Long, Decimal, String,
// Date, Time, DateTime + base classes). Engine code uses these as the
// strict input/output types at all internal boundaries.
export 'cql_primitives/cql_primitives.dart';

// Ported engine + parser.
export 'cql_to_elm/cql_to_elm.dart';
export 'engine/engine.dart';
export 'exceptions/exceptions.dart';
export 'model/model.dart';
