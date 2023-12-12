import '../cql.dart';

class ModelContext {
  late String name;
  late ClassType type;
  late String birthDateElement;
  List<String> keys = [];

  ModelContext(String name, ClassType type, Iterable<String>? keys,
      String birthDateElement) {
    this.name = name;
    this.type = type;
    this.birthDateElement = birthDateElement;
    if (keys != null) {
      this.keys.addAll(keys);
    }
  }

  String getName() {
    return name;
  }

  ClassType getType() {
    return type;
  }

  String getBirthDateElement() {
    return birthDateElement;
  }

  Iterable<String> getKeys() {
    return keys;
  }
}
