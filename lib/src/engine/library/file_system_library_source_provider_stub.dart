import 'package:cql/src/engine/library/library_manager.dart';

/// Stub variant of `FileSystemLibrarySourceProvider` for platforms without
/// `dart:io` (e.g. the web). The real implementation lives in
/// `file_system_library_source_provider_io.dart` and is selected by
/// conditional export.
class FileSystemLibrarySourceProvider implements LibrarySourceProvider {
  /// File-system lookup is unavailable on this platform; supply a custom
  /// [LibrarySourceProvider] instead.
  FileSystemLibrarySourceProvider({required this.basePath}) {
    throw UnsupportedError(
      'FileSystemLibrarySourceProvider requires dart:io, which is not '
      'available on this platform. Supply a custom LibrarySourceProvider.',
    );
  }

  /// The directory in which `<path>.cql` files would be looked up.
  final String basePath;

  @override
  Future<String?> getLibrarySource(String path, String? version) async => null;
}
