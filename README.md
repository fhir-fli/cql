# cql

Model-independent CQL ([Clinical Quality Language](https://cql.hl7.org/))
translator and execution engine in Dart — a port of the reference
[cqframework](https://github.com/cqframework/clinical_quality_language)
Java engine, part of the [fhir-fli](https://github.com/fhir-fli)
ecosystem.

**FHIR-free by design**: the engine knows nothing about any FHIR version.
Concrete data access enters through the `ModelResolver` /
`RetrieveProvider` boundary interfaces, implemented by the thin
`fhir_r4_cql` / `fhir_r5_cql` / `fhir_r6_cql` binding packages — which is
what applications normally depend on.

```
CQL source ──(cql_to_elm translator)──▶ ELM ──(engine)──▶ results
                                              ▲
                              ModelResolver / RetrieveProvider
                              (fhir_r*_cql bindings supply FHIR)
```

## Usage (through a binding)

```dart
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

// Translate CQL to an executable library (CQL -> ELM), then run it
// against your data via the version binding's ModelResolver.
final library = libraryFromCql(cqlSource);
final result = await library.execute(context, const R4ModelResolver());
```

## Usage (standalone)

Model-free CQL (arithmetic, strings, intervals, quantities, dates, queries
over inline lists) runs without any binding:

```dart
import 'package:cql/cql.dart';

final library = libraryFromCql("""
library Example version '1.0.0'

define "TheAnswer": 6 * 7
define "InRange": 100 in Interval[90, 120]
define "DoseSum": 5 'mg' + 2.5 'mg'
""");
final results = await library.execute() as Map<String, dynamic>;
print(results['TheAnswer']); // 42
```

Translated libraries round-trip through ELM JSON (`library.toJson()` /
`CqlLibrary.fromJson(...)`), so they can be stored and reloaded without
re-translating. See `example/main.dart` for a runnable demo.

## Design notes

- **CQL System primitives are deliberately wrapped** (`CqlBoolean`,
  `CqlInteger`, `CqlLong`, `CqlDecimal`, `CqlString`, dates/times):
  `CqlLong` is BigInt-backed because Dart `int` is a JS double on the web
  and loses precision past 2^53, and `CqlDecimal` preserves source scale
  (`"1.00"`) as `equivalent` requires. The Java/JS reference engines went
  native because *their* native types fit CQL's precision rules — Dart's
  don't.
- **Modelinfo ships as data**, served by `StandardModelInfoProvider`
  (FHIR 1.0.2–4.0.1, QDM 4.1.2–5.6, QUICK, QICore, US Core) and
  regenerable from the official HL7 modelinfo XML via
  `tool/regenerate_modelinfo.dart`.
- **The public barrel is curated**: it exposes `libraryFromCql`, the CQL
  System result types (primitives + `CqlCode`/`CqlConcept`/`CqlInterval`/…),
  `CqlLibrary`/`LibraryManager`, the `ModelResolver`/`RetrieveProvider`/
  `TerminologyProvider` boundary interfaces, and the exception types. The
  ANTLR-generated lexer/parser, the ELM expression tree, and the translator
  internals are implementation details under `lib/src`.

## Platforms

The public surface has no `dart:io` in its import graph: the file-system
conveniences (`FileSystemLibrarySourceProvider`, `ValueSetFileLoader`) are
conditional exports that throw `UnsupportedError` on platforms without
`dart:io`. On the web, compile with **WASM** (`dart compile wasm` /
Flutter's `--wasm`) — the ANTLR-generated parser uses 64-bit integer
bitsets that dart2js cannot represent (JS numbers lose precision past
2^53), so the legacy JS compiler is not a supported target.

## Testing

597 tests including the ported CQL conformance suites:

```bash
dart test
```

## License

MIT © FHIR-FLI. Ported from
[cqframework](https://github.com/cqframework/clinical_quality_language)
(Apache-2.0) — see the upstream project for the reference implementation.
