/// Represents the Locator type
class Locator {
  /// startLine attribute
  int? startLine;

  /// startChar attribute
  int? startChar;

  /// endLine attribute
  int? endLine;

  /// endChar attribute
  int? endChar;

  Locator({this.startLine, this.startChar, this.endLine, this.endChar});

  factory Locator.fromJson(Map<String, dynamic> json) {
    return Locator(
      startLine: json['startLine'] as int?,
      startChar: json['startChar'] as int?,
      endLine: json['endLine'] as int?,
      endChar: json['endChar'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (startLine != null) {
      data['startLine'] = startLine;
    }
    if (startChar != null) {
      data['startChar'] = startChar;
    }
    if (endLine != null) {
      data['endLine'] = endLine;
    }
    if (endChar != null) {
      data['endChar'] = endChar;
    }
    return data;
  }
}
