import 'dart:io';

import 'package:cql/src/internal.dart' show CqlLibrary;

/// Provides CQL source text given a library path and optional version.
abstract class LibrarySourceProvider {
  Future<String?> getLibrarySource(String path, String? version);
}

/// Looks in a configurable base directory for `<path>.cql` files.
class FileSystemLibrarySourceProvider implements LibrarySourceProvider {
  FileSystemLibrarySourceProvider({required this.basePath});
  final String basePath;

  @override
  Future<String?> getLibrarySource(String path, String? version) async {
    // Try versioned filename first (e.g. FHIRHelpers-4.0.1.cql)
    if (version != null && version.isNotEmpty) {
      final versionedFile = File('$basePath/$path-$version.cql');
      if (await versionedFile.exists()) {
        return versionedFile.readAsString();
      }
    }
    // Fall back to unversioned filename (e.g. FHIRCommon.cql)
    final file = File('$basePath/$path.cql');
    if (await file.exists()) {
      return file.readAsString();
    }
    return null;
  }
}

/// Loads, caches, and resolves the CQL libraries referenced by an artifact.
///
/// A CQL library may include other libraries (see [IncludeDef]); the manager
/// resolves those references by name and version, caching each loaded
/// [CqlLibrary] so it is parsed only once. When a [sourceProvider] and
/// [parseLibrary] function are supplied, a cache miss triggers auto-loading of
/// the library source and recursive resolution of its includes, with guards
/// against circular includes.
class LibraryManager {
  LibraryManager({this.sourceProvider, this.parseLibrary});
  // Cache of loaded libraries by name and version
  final Map<String, Map<String, CqlLibrary>> _libraryCache = {};

  /// Optional source provider for auto-loading libraries on cache miss.
  LibrarySourceProvider? sourceProvider;

  /// Guard against circular includes during auto-loading.
  final Set<String> _loading = {};

  /// Parser function for converting CQL source to CqlLibrary.
  /// Set this to enable auto-loading.
  CqlLibrary Function(String cqlSource)? parseLibrary;

  /// Registers [library] in the cache under [libraryName] and [version],
  /// making it available to subsequent [resolveLibrary] calls.
  void addLibrary(String libraryName, String version, CqlLibrary library) {
    if (_libraryCache.containsKey(libraryName)) {
      _libraryCache[libraryName]![version] = library;
    } else {
      _libraryCache[libraryName] = {version: library};
    }
  }

  /// Resolves the library identified by [libraryName] and [version],
  /// returning the cached copy if present.
  ///
  /// On a cache miss, and if both a [sourceProvider] and a [parseLibrary]
  /// function are configured, the source is loaded and parsed, its includes
  /// are resolved recursively, and the result is cached. Returns `null` if the
  /// library cannot be found or a circular include is detected.
  Future<CqlLibrary?> resolveLibrary(
    String libraryName,
    String? version,
  ) async {
    version = version ?? '';
    final cached = _libraryCache[libraryName]?[version];
    if (cached != null) return cached;

    // Auto-load from source provider if available
    if (sourceProvider != null && parseLibrary != null) {
      final loadKey = '$libraryName|$version';
      if (_loading.contains(loadKey)) {
        // Circular dependency — return null to avoid infinite recursion
        return null;
      }
      _loading.add(loadKey);
      try {
        final source = await sourceProvider!.getLibrarySource(
          libraryName,
          version.isNotEmpty ? version : null,
        );
        if (source != null) {
          final library = parseLibrary!(source);
          // Wire up this library to share the same manager
          library.libraryManager = this;
          // Recursively resolve includes
          if (library.includes != null) {
            for (final include in library.includes!.def) {
              if (include.path != null) {
                await resolveLibrary(include.path!, include.version ?? '');
              }
            }
          }
          addLibrary(libraryName, version, library);
          return library;
        }
      } finally {
        _loading.remove(loadKey);
      }
    }

    return null;
  }
}
