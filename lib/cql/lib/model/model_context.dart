import '../cql.dart';

class ModelContext {
  final String birthDateElement;
  List<String> keys;
  final String name;
  final ClassType type;

  ModelContext(
      {required this.name,
      required this.type,
      Iterable<String>? keys,
      required this.birthDateElement})
      : keys = keys != null ? List<String>.from(keys) : <String>[];

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
