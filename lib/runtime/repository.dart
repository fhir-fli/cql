import '../cql.dart';

class Repository {
  late dynamic data;
  late List<ElmLibrary> libraries;

  Repository(dynamic data) {
    this.data = data;
    this.libraries = List.from(data.values);
  }

  ElmLibrary? resolve(String path, [String? version]) {
    for (final lib in libraries) {
      final String id = lib.identifier.id;
      final String? system = lib.identifier.system;
      final String? libraryVersion = lib.identifier.version;
      final libraryUri = '$system/$id';

      if (path == libraryUri || path == id) {
        if (version != null) {
          if (libraryVersion == version) {
            return lib;
          }
        } else {
          return lib;
        }
      }
    }
    return null;
  }
}
