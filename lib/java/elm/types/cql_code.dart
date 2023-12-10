import '../../../cql/cql-to-elm/elm/elm.dart';

class CqlCode {
  String code;
  String? system;
  String? version;
  String? display;

  CqlCode(this.code, [this.system, this.version, this.display]);

  bool get isCode => true;

  bool hasMatch(dynamic code) {
    if (code is String) {
      // Specific behavior may differ from the specification. Matching codesystem behavior.
      return code == this.code;
    } else {
      return codesInList(toCodeList(code), [this]);
    }
  }

  @override
  String toString() {
    return 'CqlCode{code: $code, system: $system, version: $version, display: $display}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CqlCode &&
          runtimeType == other.runtimeType &&
          code == other.code &&
          system == other.system &&
          version == other.version &&
          display == other.display;

  @override
  int get hashCode =>
      code.hashCode ^ system.hashCode ^ version.hashCode ^ display.hashCode;
}
