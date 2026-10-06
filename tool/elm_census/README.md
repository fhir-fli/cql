# ELM round-trip censuses

Two scripts that found the 2026-10-06 defects (see CHANGELOG `[Unreleased]`):

- `written_vs_read_types.py` — type names classes write vs. names readers dispatch.
- `optional_field_casts.py <xsd dir>` — required casts of schema-optional fields.

The sweeps themselves are tests: `test/test/engine/elm_reference_reload_test.dart`
(every reference ELM file loads and reloads unchanged),
`elm_translator_reload_test.dart` (every translated CQL source reloads
unchanged and executes identically) and `elm_reader_writer_schema_test.dart`.
