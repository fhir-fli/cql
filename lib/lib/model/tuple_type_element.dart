import '../cql.dart';

class TupleTypeElement {
  String name;
  bool oneBased;
  DataType type;

  TupleTypeElement(
      {required this.name, required this.type, this.oneBased = false});

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    if (o is TupleTypeElement) {
      TupleTypeElement that = o;
      return name == that.name &&
          type == that.type &&
          (oneBased == that.oneBased);
    }
    return false;
  }

  @override
  int get hashCode {
    return (17 * name.hashCode) +
        (33 * type.hashCode) +
        (31 * (oneBased ? 1 : 0));
  }

  @override
  String toString() {
    return "$name:${type.toString()}";
  }

  String getName() {
    return name;
  }

  DataType getType() {
    return type;
  }

  bool isSubTypeOf(TupleTypeElement that) {
    return getName() == that.getName() && getType().isSubTypeOf(that.getType());
  }

  bool isSuperTypeOf(TupleTypeElement that) {
    return getName() == that.getName() &&
        getType().isSuperTypeOf(that.getType());
  }

  String toLabel() {
    return "$name: ${type.toLabel()}";
  }
}
