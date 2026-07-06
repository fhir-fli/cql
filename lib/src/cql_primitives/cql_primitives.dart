/// CQL System type primitives — Boolean, Integer, Long, Decimal, String, Date,
/// Time, DateTime per [CQL spec §3.4](https://cql.hl7.org/03-developersguide.html#types-and-values).
///
/// Strictly the CQL System primitive set. FHIR-version-specific primitives
/// (`FhirCode`, `FhirOid`, `FhirCanonical`, `FhirMarkdown`, `FhirUri`, etc.)
/// belong in `fhir_r4`/`fhir_r5`/`fhir_r6` and are bridged into the engine
/// via [ModelResolver] — they do not live here.
///
/// Composite CQL System types (Code, Concept, Quantity, Interval, etc.) live
/// in `lib/engine/types/` alongside the engine machinery that uses them.
library;

// imports
import 'dart:convert';
import 'package:yaml/yaml.dart';

// The CqlType contract (equal / equivalent) — single canonical definition.
import '../engine/types/cql_type.dart';

// Base
part 'primitive_type.dart';

// CQL System primitives
part 'boolean.dart';
part 'date.dart';
part 'date_time.dart';
part 'date_time_base.dart';
part 'decimal.dart';
part 'integer.dart';
part 'integer64.dart';
part 'number.dart';
part 'string.dart';
part 'time.dart';

// CQL-internal helpers used by the date/time math
part 'comparator.dart';
part 'extended_duration.dart';
