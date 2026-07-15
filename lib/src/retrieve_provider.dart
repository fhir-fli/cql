/// Abstracts how the CQL engine fetches resources from a data context for
/// `[ResourceType: filters]` retrieve expressions.
///
/// Per the canonical pattern from [`cqframework/cql-engine`](https://github.com/cqframework/cql-engine),
/// `RetrieveProvider` is a subset of `DataProvider` (which combines
/// `ModelResolver` + `RetrieveProvider`). In this package they're kept as
/// separate interfaces so implementers can mix and match — e.g. an
/// in-memory `Map<String, dynamic>` retriever combined with the R4
/// model resolver for unit tests, vs. a FHIR-server-backed retriever
/// combined with the same resolver in production.
// Deliberate SPI seam mirroring cqframework's RetrieveProvider interface
// (see doc above); implemented by FHIR bindings and test fakes, not a
// function in disguise.
// ignore: one_member_abstracts
abstract class RetrieveProvider {
  /// Retrieves resources matching the criteria.
  ///
  /// - [dataType]: FHIR resource type name (e.g. `'Encounter'`,
  ///   `'Observation'`).
  /// - [templateId]: FHIR profile / structure-definition URL, if filtering by profile.
  /// - [codePath]: path to the property holding the code being filtered
  ///   (e.g. `'category'` for Observation.category).
  /// - [codes]: explicit list of CQL `Code` / `Concept` values to match.
  /// - [valueSet]: a value-set identifier (URL) to match against.
  /// - [datePath]: path to the date-typed property being filtered.
  /// - [dateLow] / [dateHigh]: inclusive bounds for date filtering.
  ///
  /// Returns the matching resources as `Map<String, dynamic>` (FHIR JSON).
  /// Empty list if nothing matches. Never null.
  Future<List<Map<String, dynamic>>> retrieve({
    required String dataType,
    String? templateId,
    String? codePath,
    List<dynamic>? codes,
    dynamic valueSet,
    String? datePath,
    DateTime? dateLow,
    DateTime? dateHigh,
  });
}
