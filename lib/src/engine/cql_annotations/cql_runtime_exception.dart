/// Thrown for CQL runtime errors (e.g. singleton from too many elements).
class CqlRuntimeException implements Exception {
  CqlRuntimeException(
    this.message, {
    this.libraryId,
    this.locator,
    this.localId,
  });

  /// Human‐readable message.
  final String message;

  /// Optional locator info from the AST node.
  final String? libraryId;
  final String? localId;
  final String? locator;

  @override
  String toString() {
    final loc = [
      if (libraryId != null) 'lib=$libraryId',
      if (locator != null) 'loc=$locator',
      if (localId != null) 'expr=$localId',
    ].join(',');
    return 'CqlRuntimeException: $message${loc.isNotEmpty ? ' ($loc)' : ''}';
  }
}
