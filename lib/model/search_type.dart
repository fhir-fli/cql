import '../cql.dart';

class SearchType {
  final String name;
  final String path;
  final DataType type;

  SearchType({required this.name, required this.path, required this.type});

  String getName() => name;

  String getPath() => path;

  DataType getType() => type;
}
