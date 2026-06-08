part of 'cql_primitives.dart';

/// Base class for CQL System *primitives* — scalar value types that have a
/// canonical string representation (CqlBoolean, CqlInteger, CqlLong,
/// CqlDecimal, CqlString, CqlDateTime, CqlDate, CqlTime).
///
/// Composite System types (CqlCode/CqlConcept/CqlQuantity/CqlInterval/
/// CqlList/CqlTuple) do **not** extend this — they implement [CqlType]
/// directly because their internal structure isn't a single string-y value.
abstract class CqlPrimitive implements CqlType {
  const CqlPrimitive(this.valueString);

  /// Canonical string representation of the value, used for round-trip
  /// serialization and debugging. Subclasses with multi-field state (e.g.
  /// [CqlDateTime] with year/month/.../timeZoneOffset) build this from
  /// their fields. `null` denotes a CQL `null` value.
  final String? valueString;

  /// `true` if this primitive carries a non-null value (CQL: not null).
  bool get hasValue => valueString != null;

  /// The CQL System type name (e.g. `"DateTime"`, `"Decimal"`,
  /// `"Boolean"`). Used in error messages and type-checks. Subclasses
  /// must override.
  String get cqlTypeName;

  /// JSON representation — default is just `{'value': valueString}`.
  /// Override in subclasses with composite state.
  Map<String, dynamic> toJson() =>
      valueString == null ? const {} : {'value': valueString};

  /// CQL spec equality (three-valued).
  ///
  /// Returns `null` when the comparison is *uncertain* — e.g. one operand
  /// has higher precision than the other at a comparable level (see
  /// [CqlDateTime] for the canonical example). Returns `true`/`false`
  /// when the comparison is determined.
  ///
  /// Distinct from Dart `==`, which is strict structural equality.
  bool? equal(Object other);

  /// CQL spec `equivalent` operator. Subclass-defined: e.g. [CqlDateTime]
  /// compares only at the lower of the two precisions; [CqlCode] ignores
  /// `display` and `version`; numeric types may apply spec-defined
  /// tolerance.
  bool equivalent(Object other);

  @override
  String toString() => valueString != null
      ? '$runtimeType($valueString)'
      : runtimeType.toString();

  // Subclasses define their own == / hashCode (structural over their
  // actual fields). No copyWith machinery — these are immutable value
  // types; use plain factory constructors when you need a modified copy.
}
