import 'package:cql/src/internal.dart';

/// The CQL `Tuple` type: an ordered structured value made up of named
/// [elements].
///
/// A tuple associates element names with values of potentially differing
/// types, modelling CQL's structured/anonymous tuple literals (and the shape
/// of class instances). Two tuples are [equal]/[equivalent] when they have the
/// same element names and correspondingly equal/equivalent element values.
class CqlTuple implements CqlType {
  /// Creates a tuple from its named [elements], optionally carrying evaluation
  /// [state].
  CqlTuple({Map<String, dynamic>? elements, this.state})
      : elements = elements ?? (state != null ? <String, dynamic>{} : null);
  Map<String, dynamic>? elements;
  State? state;

  CqlTuple copyWith({Map<String, dynamic>? elements, State? state}) =>
      CqlTuple(elements: elements ?? this.elements, state: state ?? this.state);

  @override
  bool equivalent(Object other) =>
      other is CqlTuple &&
      (Equivalent.equivalent(this, other).valueBoolean ?? false);

  @override
  bool? equal(Object other) =>
      other is CqlTuple ? Equal.equal(this, other)?.valueBoolean : null;

  @override
  String toString() {
    if ((elements?.length ?? 0) == 0) {
      return 'Tuple { : }';
    } else {
      var builder = 'Tuple {\n';
      elements?.forEach((key, value) {
        builder += '\t"$key": "$value"\n';
      });
      builder += '}';
      return builder;
    }
  }
}

/// Marker type for engine evaluation state that may be threaded through a
/// [CqlTuple] during execution.
class State {}
