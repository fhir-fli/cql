# Changelog

## [Unreleased]

- **Every ELM reader and writer checked against the schema and the reference translator's output, after the Literal fix below turned up its siblings.** Two censuses (`tool/elm_census/`) and three sweep tests: every one of the 17 reference ELM files in `test/test/cql_to_elm_tests` loads and reloads unchanged (two did not load at all), every translated CQL source reloads unchanged and executes to the same values (five did not survive a reload), and each reader accepts what `expression.xsd` / `clinicalexpression.xsd` let a producer omit. Fixed: `AggregateClause.distinct` was cast as a required bool (schema: optional, default false; the reference translator omits it on 8 of 13 clauses); `Convert` required both `toType` and `toTypeSpecifier` (schema: either); `Split.separator`, `Aggregate.initialValue`, `Concept.code`, `Quantity.unit` (default `'1'`, CQL reference 09-b) and the n-ary operators' `operand` were cast as required (schema: optional); the top-level reader did not dispatch `OnOrAfter` (so `CqlIntervalOperatorsTest` could not reload), nor the engine's own `Skip` and `Take`; `OperatorExpression.fromJson` read `Concatenate` only as `Contactenate`; `LiteralDateTime.toJson` dropped the timezone offset, so `@2013-01-02T00:00:00.000Z` reloaded as a local time; `LiteralDecimal.toJson` threw a `RangeError` on a literal with more than 21 significant digits (now written as its source text, as the reference does; `CqlArithmeticFunctionsTest` and `ValueLiteralsAndSelectors` translate); the interval literal classes wrote no `type` and Literal objects for their closures, so nothing could read them (now the ELM `Interval` shape). Not changed: `FunctionRef.name`, `QueryLetRef.name`, `Repeat.scope`, `Total.scope`, `ByColumn.path` are schema-optional strings the engine still requires, since a ref without a name has no meaning. Two translator defects stay pinned in the tests: `CqlDateTimeOperatorsTest` (null cast in the timing visitor) and `CqlTypesTest` (`24:59:59.999` refused as a time).
- **Grey's original per-operator engine tests are back** (#16). 93 cases under `test/test/engine/original/`, one file per operator, with the titles and assertions as written in 2025 (`fhir_r4_cql/test/engine/expression`); the 2026-02-10 consolidation had dropped 82 of 262 named cases, and 50 of those covered operators nothing else exercised. Two engine defects they found: `Start`/`End` required a ModelResolver before looking at a System value, so `start of Interval[1, 5]` threw; and the JSON reader built `NullExpression` for a `Null` node while the translator and every null check in the engine use `LiteralNull`, so `Interval[null, null]` reloaded as an unbounded interval. `CqlIntervalOperatorsTest` now executes without a model and the reload test compares it.
- **Grey's translator harness is back, and the reference comparison is exact** (#9, #10). `test/test/exercises/` translates each of the 14 CQL/ELM pairs the original `fhir_r4_cql/lib/main.dart` harness held and compares the written ELM with the reference tree with `DeepCollectionEquality`; the 17-pair conformance test does the same instead of matching type strings and a 50% node-type threshold. Named exclusions, applied to both sides: `annotation`, empty arrays (every list in the schema is optional), and the test suite's own `skipped` / "Translation Error" cases. A file not yet equal is pinned at its first differing path, and a pin fails once the file matches.
- **The translator writes what the reference translator writes**, measured against those 31 files (#10–#15): the context retrieve's templateId from the model info (QUICK → the QICore profile); operands and query aliases hide library-level names; comment `@tags` become the define's Annotation; `cast … as` is strict and a cast is never wrapped at the cast, the operator inserts the model's conversion; an unqualified type in `is`/`as` resolves to the operand's choice member of that name; `a.b` over an operand, alias, let, define or parameter is a Property; bare nulls are typed from a sibling (Boolean under the logical operators, the list type on the list side of `contains`/`in`); Integer literals keep their source text and are promoted with ToDecimal wherever a Decimal is required; an Integer list under Avg goes through a query, a Decimal list stays bare; set operators cast only lists of different element types; `on or after` is SameOrAfter (ELM has no OnOrAfter); `Concept { codes: Code {…} }` promotes with ToList; `exists null` types the null as List<Any>. Twelve of the 17 reference files and ten of the 12 referenced harness files are exact.
- **Translation errors are recorded on the library, never thrown** (#6). A date, datetime or time literal no calendar holds (`@T24:59:59.999`) and a define with a syntax error inside it each become a `CqlToElmError` annotation with a `Null` in place; the rest of the library translates. The parser's listener records ELM `CqlToElmError` (it recorded this package's own `ErrorAnnotation`, which a caller filtering on the ELM type did not see). `CqlTime` refuses `:60` seconds and more than three fraction digits (CQL Developer's Guide Table 3-G). Every CQL source in the test suite now translates.
- **`DateTime` writes its `timezoneOffset` whatever its precision** (#4): it was written only after a `millisecond`, so `@2017-03-12T01:00:00-07:00` lost its offset on every write (24 reference nodes).
- **`Interval` reads and writes `lowClosedExpression` and `highClosedExpression`** (#5), the schema's optional closed-indicator expressions; the reference reload test now also asserts no non-empty value of the reference ELM is lost on a load and write.
- **The System type table is complete** (#7): `Date`, `Long`, `Any`, `CodeSystem` and `Vocabulary` were missing (CQL Reference Appendix B), so `minimum Date` translated with the FHIR namespace.
- **`minimum` / `maximum` of a type outside the seven the reference defines them for is a `CqlException` naming the type** (#8), carried as the definition's value, instead of a bare `UnimplementedError` that stopped the run.
- **A library reloaded from its own ELM JSON writes the same ELM JSON.** `Literal.toJson` wrote the scalar literal class's whole `toJson()` under `value`, so every `CqlLibrary.fromJson(x).toJson()` nested a literal's value one level deeper (`"value": {"valueType": …, "value": "true", "type": "Literal"}`), and a library reloaded twice failed to execute (`type 'String' is not a subtype of type 'bool'`). The translator never builds the `Literal` wrapper, only `fromJson` does, which is why one reload worked. `value` is the scalar now, as the reference translator writes it (all 10,324 Literal nodes in `test/test/cql_to_elm_tests` carry a string). `TimeExpression` writes its ELM type as `Time` (it wrote `TimeExpression`, which only the operator dispatch read; both still read). Four two-reload tests, one over the reference translator's own ELM.

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
