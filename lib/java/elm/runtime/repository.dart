import '../../../cql/cql-to-elm/elm/elm.dart';

class Repository {
  dynamic data;
  List<ElmLibrary>? libraries;

  Repository(this.data) {
    libraries = List.from(data.values);
  }

  // TODO(Dokotela): I don't trust these json conversions
  ElmLibrary? resolve(String path, [String? version]) {
    for (var library in libraries ?? <ElmLibrary>[]) {
      final lib = library.toJson();
      if (lib['library'] != null && lib['library']['identifier'] != null) {
        final identifier = lib['library']['identifier'];
        final id = identifier['id'];
        final system = identifier['system'];
        final libraryVersion = identifier['version'];

        final libraryUri = '$system/$id';

        if (path == libraryUri || path == id) {
          if (version != null) {
            if (libraryVersion == version) {
              return ElmLibrary(lib, this);
            }
          } else {
            return ElmLibrary(lib, this);
          }
        }
      }
    }
    return null;
  }
}
