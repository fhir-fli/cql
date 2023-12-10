import '../cql.dart';

class TupleTypeElement {
  String name;
  DataType type;
  bool oneBased;

  TupleTypeElement(
      {required this.name, required this.type, this.oneBased = false});

  String getName() {
    return this.name;
  }

  DataType getType() {
    return this.type;
  }

  @override
  int get hashCode {
    return (17 * this.name.hashCode) +
        (33 * this.type.hashCode) +
        (31 * (this.oneBased ? 1 : 0));
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    if (o is TupleTypeElement) {
      TupleTypeElement that = o;
      return this.name == that.name &&
          this.type == that.type &&
          (this.oneBased == that.oneBased);
    }
    return false;
  }

  bool isSubTypeOf(TupleTypeElement that) {
    return this.getName() == that.getName() &&
        this.getType().isSubTypeOf(that.getType());
  }

  bool isSuperTypeOf(TupleTypeElement that) {
    return this.getName() == that.getName() &&
        this.getType().isSuperTypeOf(that.getType());
  }

  @override
  String toString() {
    return "${this.name}:${this.type.toString()}";
  }

  String toLabel() {
    return "${this.name}: ${this.type.toLabel()}";
  }
}
