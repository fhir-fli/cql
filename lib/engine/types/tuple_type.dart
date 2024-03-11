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
  bool equivalent(Object other) {
    if (other is TupleType) {
      return Equivalent.equivalent(this, other);
    } else {
      return false;
    }
  }

  @override
  bool? equal(Object other) {
    if (other is TupleType) {
      return Equal.equal(this, other);
    } else {
      return false;
    }
  }

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
