/// A span of text within CQL source, expressed as a start and end
/// line/character position.
///
/// Locations are used by diagnostics (via [SourceLocator]) to point at the
/// exact region of the CQL document an error, warning, or message concerns.
/// The locator string form is `startLine:startChar-endLine:endChar` (see
/// [toLocator] and [fromLocator]).
class Location {
  /// Creates a [Location] spanning from ([startLine], [startChar]) to
  /// ([endLine], [endChar]).
  Location(this.startLine, this.startChar, this.endLine, this.endChar);

  /// The 1-based line number where the span begins.
  final int startLine;

  /// The character position within [startLine] where the span begins.
  final int startChar;

  /// The 1-based line number where the span ends.
  final int endLine;

  /// The character position within [endLine] where the span ends.
  final int endChar;

  int getStartLine() => startLine;
  int getStartChar() => startChar;
  int getEndLine() => endLine;
  int getEndChar() => endChar;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Location) return false;

    return startLine == other.startLine &&
        startChar == other.startChar &&
        endLine == other.endLine &&
        endChar == other.endChar;
  }

  /// Returns whether this location fully contains [other] — that is, whether
  /// [other]'s span begins at or after this span's start and ends at or before
  /// this span's end.
  bool includes(Location other) {
    return startLine <= other.startLine &&
        (startLine < other.startLine || startChar <= other.startChar) &&
        endLine >= other.endLine &&
        (endLine > other.endLine || endChar >= other.endChar);
  }

  @override
  int get hashCode => Object.hash(startLine, startChar, endLine, endChar);

  Map<String, dynamic> toJson() {
    return {
      'startLine': startLine,
      'startChar': startChar,
      'endLine': endLine,
      'endChar': endChar,
    };
  }

  @override
  String toString() =>
      'Location{ startLine=$startLine, startChar=$startChar, endLine=$endLine, endChar=$endChar }';

  /// Renders this location as a locator string.
  ///
  /// Produces `line:char` for a zero-width span (start equals end) or
  /// `startLine:startChar-endLine:endChar` otherwise. Inverse of [fromLocator].
  String toLocator() {
    return startLine == endLine && startChar == endChar
        ? '$startLine:$startChar'
        : '$startLine:$startChar-$endLine:$endChar';
  }

  /// Parses a locator string (as produced by [toLocator]) back into a
  /// [Location].
  ///
  /// Accepts either `line:char` or `startLine:startChar-endLine:endChar`.
  /// Throws an [ArgumentError] if [locator] is null or empty, or a
  /// [FormatException] if a segment is not in `line:char` form.
  static Location fromLocator(String? locator) {
    if (locator == null || locator.isEmpty) {
      throw ArgumentError('locator required');
    }

    final locations = locator.split('-');
    var startLine = 0;
    var startChar = 0;
    var endLine = 0;
    var endChar = 0;

    for (var i = 0; i < locations.length; i++) {
      final ranges = locations[i].split(':');
      if (ranges.length != 2) {
        throw FormatException('Invalid locator format: $locator');
      }
      final line = int.parse(ranges[0]);
      final char = int.parse(ranges[1]);
      if (i == 0) {
        startLine = line;
        startChar = char;
      } else {
        endLine = line;
        endChar = char;
      }
    }

    if (locations.length == 1) {
      endLine = startLine;
      endChar = startChar;
    }

    return Location(startLine, startChar, endLine, endChar);
  }
}
