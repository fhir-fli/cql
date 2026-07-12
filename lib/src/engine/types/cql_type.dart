/// Common interface for CQL System values that participate in CQL's two
/// notions of sameness.
///
/// CQL distinguishes *equality* (`=`) from *equivalence* (`~`). Equality is
/// strict and three-valued: comparing values where a relevant component is
/// unknown (null) yields `null` rather than `true`/`false`. Equivalence is a
/// total, null-tolerant relation used by operations such as membership tests,
/// where two unknowns are considered equivalent. Structured CQL types
/// ([CqlCode], [CqlConcept], [CqlInterval], [CqlTuple], vocabularies, etc.)
/// implement this contract.
abstract class CqlType {
  /// Whether this value is equivalent (`~`) to [other].
  ///
  /// Equivalence is null-tolerant and always returns a definite `bool`.
  bool equivalent(Object other);

  /// Whether this value is equal (`=`) to [other] under CQL three-valued
  /// logic.
  ///
  /// Returns `null` when the comparison is uncertain because a relevant
  /// component is unknown (null) on one side only.
  bool? equal(Object other);
}
