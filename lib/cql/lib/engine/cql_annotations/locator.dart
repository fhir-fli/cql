import '../../cql.dart';

class Locator extends CqlToElmBase {
  final String? librarySystem;
  final String? libraryId;
  final String? libraryVersion;
  final int? startLine;
  final int? startChar;
  final int? endLine;
  final int? endChar;

  Locator({
    this.librarySystem,
    this.libraryId,
    this.libraryVersion,
    this.startLine,
    this.startChar,
    this.endLine,
    this.endChar,
  });

  @override
  String toString() {
    return 'Locator{librarySystem: $librarySystem, libraryId: $libraryId, libraryVersion: $libraryVersion, startLine: $startLine, startChar: $startChar, endLine: $endLine, endChar: $endChar}';
  }
}
