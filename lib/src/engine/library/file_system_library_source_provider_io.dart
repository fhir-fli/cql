import 'dart:io';

import 'package:cql/src/engine/library/library_manager.dart';

/// A [LibrarySourceProvider] that looks in a configurable base directory for
/// `<path>.cql` files (VM only).
///
/// On platforms without `dart:io` (e.g. the web) the stub variant of this
/// class is exported instead, and it throws [UnsupportedError] — supply a
/// custom [LibrarySourceProvider] there.
class FileSystemLibrarySourceProvider implements LibrarySourceProvider {
  /// Creates a provider rooted at [basePath].
  FileSystemLibrarySourceProvider({required this.basePath});

  /// The directory in which `<path>.cql` files are looked up.
  final String basePath;

  @override
  Future<String?> getLibrarySource(String path, String? version) async {
    // Try versioned filename first (e.g. FHIRHelpers-4.0.1.cql)
    if (version != null && version.isNotEmpty) {
      final versionedFile = File('$basePath/$path-$version.cql');
      if (versionedFile.existsSync()) {
        return versionedFile.readAsString();
      }
    }
    // Fall back to unversioned filename (e.g. FHIRCommon.cql)
    final file = File('$basePath/$path.cql');
    if (file.existsSync()) {
      return file.readAsString();
    }
    return null;
  }
}
