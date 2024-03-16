import '../../cql.dart';

class TupleType implements CqlType {
  Map<String, dynamic>? elements;
  State? state;

  TupleType({Map<String, dynamic>? elements, this.state})
      : elements = elements ?? (state != null ? <String, dynamic>{} : null);

  TupleType copyWith({Map<String, dynamic>? elements, State? state}) =>
      TupleType(
          elements: elements ?? this.elements, state: state ?? this.state);

  @override
  bool equivalent(Object other) => other is TupleType
      ? Equivalent.equivalent(this, other).value ?? false
      : false;

  @override
  bool? equal(Object other) =>
      other is TupleType ? Equal.equal(this, other)?.value : null;

  @override
  String toString() {
    if ((elements?.length ?? 0) == 0) {
      return "Tuple { : }";
    } else {
      String builder = 'Tuple {\n';
      elements?.forEach((key, value) {
        builder += '\t"$key": "$value"\n';
      });
      builder += '}';
      return builder;
    }
  }
}

class State {}
