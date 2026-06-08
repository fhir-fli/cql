# Changelog

## 0.1.0-dev.1 — initial scaffolding

- New package replacing the three drifting mirror packages `fhir_r4_cql` / `fhir_r5_cql` / `fhir_r6_cql`.
- `ModelResolver` and `RetrieveProvider` interfaces define the FHIR-version boundary.
- Per-version resolver implementations (`R4ModelResolver`, `R5ModelResolver`, `R6ModelResolver`) ship in the same package.
- Engine code, CQL System primitives, and ELM parser to be ported from `fhir_r4_cql` in subsequent dev releases.
