# Changelog

## [0.7.0]

- **Dates no calendar holds are refused everywhere.** `CqlDate` / `CqlDateTime` checked year, month, day, time fields and their nesting with `assert`s, which a compiled app skips: on a device Feb 30 2024 constructed. The checks are now `CqlDateTimeBase.checkFields`, run on every construction path, throwing a `FormatException` naming the field. The string parser also reads the whole string or refuses it (`'2024-13-01'` used to read as the year 2024), raises `FormatException` rather than `ArgumentError` for text that is not a date-time, and accepts CQL's `@2016T` / `@2012-01T` literal forms. `CqlLong` enforces the 64-bit range its message always claimed.
- **Every `catch (_)` in the engine names what it absorbs, with the CQL sentence it implements** (62 sites). `ToDate`, `ToDateTime`, `ToTime`, `ToLong`, `ToInteger` (Long out of range), `ToRatio`, `ToQuantity` and `ToString` answer null for input they cannot convert instead of throwing; `ConvertsTo*` and `CanConvert*` are exactly `To* != null`; quantity comparisons and interval operators answer null for units that do not compare (previously `after` / `before` / `same or before` could throw a `UcumException` out of the engine); `predecessor` / `successor` at the calendar's edge are null. A library's `resolveCodeRef` / `resolveValueSetRef` / `resolveCodeSystemRef` return null for an unknown name instead of throwing. A defect (an `Error`) inside any of these now surfaces instead of becoming false or null.

- The annotation types (`Annotation`, `ErrorAnnotation`, `CqlToElmError`, `CqlToElmInfo`, `Locator`, `Tag`, `Narrative`, `ErrorSeverity`, `ErrorType`, `CqlToElmBase`) are exported from the public barrel. `libraryFromCql` has always recorded translation errors on `CqlLibrary.annotation` instead of throwing; without the types a caller could not tell a library that translated from one that did not.
- **`CqlDateTimeBase.valueDateTime` is the instant the value denotes.** A value with `Z` or an explicit offset is returned in UTC, as `DateTime.parse` does: `2013-01-14T10:00:00+02:00` is 08:00Z. It used to build a local `DateTime` from the wall-clock components and discard the offset, so that value read 10:00 in whatever zone the machine ran in. A value with no offset is still returned in the local zone. `DurationBetween` and `DifferenceBetween` had compensated for the old behaviour by re-applying the offset themselves; they no longer do, so their answers are unchanged (the spec's own cross-offset cases, `hours between @2017-03-12T01:00:00-07:00 and @2017-03-12T03:00:00-06:00 = 1`, are now engine tests).

## [0.6.3]

- `BundleDataProvider` exported from the public barrel (retrieve data directly from a Bundle without a custom provider)

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
