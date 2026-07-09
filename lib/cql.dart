/// Model-independent CQL (Clinical Quality Language) engine and
/// CQL-to-ELM translator. FHIR-free: concrete data access is supplied via
/// [ModelResolver] / [RetrieveProvider], implemented by the
/// `fhir_r4_cql` / `fhir_r5_cql` / `fhir_r6_cql` binding packages.
library;

import 'package:cql/cql.dart' show ModelResolver, RetrieveProvider;
import 'package:cql/src/internal.dart' show ModelResolver, RetrieveProvider;

// CQL System primitive types (Boolean, Integer, Long, Decimal, String,
// Date, Time, DateTime + base classes). Engine code uses these as the
// strict input/output types at all internal boundaries.
export 'src/cql_primitives/cql_primitives.dart';
// Translator (CQL -> ELM), engine, ELM model, and exceptions. The
// ANTLR-generated lexer/parser stays internal (src-only).
export 'src/cql_to_elm/elm_error_listener.dart';
export 'src/cql_to_elm/library_from_cql.dart';
export 'src/cql_to_elm/model/model.dart';
export 'src/cql_to_elm/visitor/visitor.dart';
export 'src/engine/engine.dart';
export 'src/exceptions/exceptions.dart';
export 'src/model/model.dart';
// The data-model boundary interfaces.
export 'src/model_resolver.dart';
export 'src/retrieve_provider.dart';
