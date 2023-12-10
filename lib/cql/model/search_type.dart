import '../cql.dart';

class SearchType {
  late String name;
  late String path;
  late DataType type;

  SearchType(String name, String path, DataType type) {
    if (name.isEmpty) {
      throw ArgumentError('A name is required to construct a Search');
    }
    if (path.isEmpty) {
      throw ArgumentError('A path is required to construct a Search');
    }

    this.name = name;
    this.path = path;
    this.type = type;
  }

  String getName() {
    return name;
  }

  String getPath() {
    return path;
  }

  DataType getType() {
    return type;
  }
}
