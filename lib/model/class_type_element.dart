import '../cql.dart';

class ClassTypeElement {
  String name;
  bool oneBased;
  bool prohibited;
  String target;
  DataType type;

  ClassTypeElement(
      {required this.name,
      required this.type,
      this.prohibited = false,
      this.oneBased = false,
      this.target = ''});

  ClassTypeElement.simple(
      {required this.name,
      required this.type,
      this.prohibited = false,
      this.oneBased = false,
      this.target = ''});

  @override
  int get hashCode {
    int result = name.hashCode;
    result = 31 * result + type.hashCode;
    result = 31 * result + prohibited.hashCode;
    result = 31 * result + oneBased.hashCode;
    result = 31 * result + target.hashCode;
    return result;
  }

  @override
  String toString() => '$name:$type${prohibited ? " (prohibited)" : ""}'
      '${oneBased ? " (one-based)" : ""}'
      '${target != "" ? " (target: $target)" : ""}';

  bool equals(Object o) {
    if (identical(this, o)) {
      return true;
    }
    if (o is! ClassTypeElement) {
      return false;
    }

    ClassTypeElement that = o;

    if (target != that.target) {
      return false;
    }
    if (oneBased != that.oneBased) {
      return false;
    }
    if (prohibited != that.prohibited) {
      return false;
    }
    if (name != that.name) {
      return false;
    }
    if (type != that.type) {
      return false;
    }

    return true;
  }

  bool isSubTypeOf(ClassTypeElement that) {
    return name == that.name && type.isSubTypeOf(that.type);
  }

  bool isSuperTypeOf(ClassTypeElement that) {
    return name == that.name && type.isSuperTypeOf(that.type);
  }
}
