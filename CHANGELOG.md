# Changelog

## 0.6.2

- Widen meta constraint to ^1.16.0 (was ^1.19.0, which conflicted with the meta version pinned by current Flutter SDKs, making cql unresolvable alongside Flutter packages)

## 0.6.1

- Fix: fractional timezone offsets (+05:30, +05:45, -03:30) were truncated to whole hours when rendering CqlDateTime value strings (same defect class as fhir_r4 0.6.1); regression test added

## 0.6.0

> Versioned 0.6.0 (not 0.1.0) to ship on the same release train as the
> fhir_r4/r5/r6 family — the fhir-fli packages version in lockstep (ucum
> excepted, which is independent).

Initial release of the standalone, model-independent CQL engine and
CQL-to-ELM translator, extracted from `fhir_r4_cql` (which is now a thin
R4B binding over this package, alongside `fhir_r5_cql` and `fhir_r6_cql`).

- **Architecture**: FHIR-free. Concrete data access enters through the
  `ModelResolver` / `RetrieveProvider` boundary interfaces, implemented by
  the per-version binding packages. A port of the reference cqframework
  (Java) engine and translator; 595 tests including the CQL conformance
  suites.
- **CQL System primitives are deliberately wrapped** (`CqlLong` is
  BigInt-backed — Dart `int` is a JS double on the web; `CqlDecimal`
  preserves source scale for `equivalent`). The reference implementations
  went native because *their* native types fit; Dart's don't.
- **Package layout**: implementation under `lib/src/` with a curated
  `package:cql/cql.dart` barrel (engine, translator API, ELM model, System
  primitives, boundary interfaces, exceptions). The ANTLR-generated
  lexer/parser is internal.
- **Data**: ships the modelinfo data served by `StandardModelInfoProvider`
  (FHIR 1.0.2–4.0.1, QDM 4.1.2–5.6, QUICK, QICore, US Core, System/Test) —
  regenerable via the checked-in `tool/regenerate_modelinfo.dart`. The
  ~23MB of generated QDM/QUICK model *classes* (never imported) and the
  experimental modelinfo variants were removed; superseded generator
  scripts deleted in favor of the tool/ pipeline.
- Known limitation: library/valueset file loading uses `dart:io` in a few
  exported files, so web support is pending their move behind provider
  seams.
