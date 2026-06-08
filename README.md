# fhir_cql

A Clinical Quality Language (CQL) execution engine for Dart. **FHIR-version-independent** engine with bundled `R4ModelResolver`, `R5ModelResolver`, and `R6ModelResolver` in a single package.

Replaces the three drifting mirror packages `fhir_r4_cql`, `fhir_r5_cql`, `fhir_r6_cql`. One engine; one place to fix bugs; per-version FHIR coupling confined to thin `ModelResolver` adapters.

> Status: **early development.** Initial port from `fhir_r4_cql` in progress.

## Quick start

```dart
import 'package:fhir_cql/fhir_cql.dart';

// Pick the resolver matching your FHIR data version.
final engine = CqlEngine(modelResolver: R4ModelResolver());

final library = await engine.parse(cqlSource);
final results = await engine.execute(
  library,
  context: <String, dynamic>{ /* your FHIR data */ },
);
```

`R5ModelResolver()` and `R6ModelResolver()` are drop-in alternatives. Tree-shaking (`dart compile` / `flutter build` release / `dart2js`) strips the unused resolvers and their transitive `fhir_r*` deps from the final binary, so an R4-only consumer ships R4-only code despite the package importing all three.

## Architecture

The engine talks to data exclusively through two interfaces:

- **`ModelResolver`** — resolves property paths on FHIR resources (handling polymorphic `[x]` fields like `effective` → `effectiveDateTime`/`effectivePeriod`/…) and converts between FHIR-typed values and CQL System types at the boundary.
- **`RetrieveProvider`** — fetches resources by type/code/date filters from a data context.

Each FHIR version provides its own resolver implementation. The engine itself has zero version-specific imports — it never directly touches `fhir_r4` / `fhir_r5` / `fhir_r6` types. This mirrors the canonical pattern from [`cqframework/cql-engine`](https://github.com/cqframework/cql-engine) (Java reference) and [`cqframework/cql-exec-fhir`](https://github.com/cqframework/cql-exec-fhir) (JavaScript reference).

## CQL spec compliance

Target: [CQL Specification v2.0+](https://cql.hl7.org/). The engine implements CQL System types (`System.Decimal`, `System.Integer`, `System.DateTime`, `System.Date`, `System.Time`, `System.Quantity`, etc.) as its own pure-Dart classes — precision and equality semantics follow the CQL spec, not any specific FHIR primitive.

## FHIRPath

This package uses [`fhir_r*_path`](https://github.com/fhir-fli) (the modern `FHIRPathEngine.create/parse/evaluate` API — never the legacy `walkFhirPath` shim). FHIRPath calls live exclusively inside `ModelResolver` implementations; when [`fhir_path`](https://github.com/fhir-fli) is eventually unified into a single model-independent package per the FHIRPath spec, only the resolvers need updating — the engine stays put.

## License

BSD-3-Clause. See `LICENSE`.
