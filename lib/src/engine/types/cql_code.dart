import 'package:cql/src/internal.dart';

/// The CQL System `Code` type: a single terminology code drawn from a code
/// system.
///
/// A CQL `Code` carries the [code] value itself, the [system] (the code
/// system's canonical URI/identifier) it is defined in, an optional [version]
/// of that system, and an optional human-readable [display]. Codes are the
/// atomic terminology value in CQL and are grouped by [CqlConcept]. Under CQL
/// semantics, code [equivalent]ce compares only `code` and `system`, while
/// [equal]ity is a three-valued comparison across all four components.
class CqlCode implements CqlType {
  /// Creates a [CqlCode] from its [code], [display], [system] and [version]
  /// components.
  CqlCode({this.code, this.display, this.system, this.version});

  factory CqlCode.fromJson(Map<String, dynamic> json) {
    return CqlCode(
      code: json['code'] as String?,
      display: json['display'] as String?,
      system: json['system'] as String?,
      version: json['version'] as String?,
    );
  }

  /// Builds a [CqlCode] from an ELM [CodeDef] declaration, resolving the code
  /// system name from [codeSystemDef] when available.
  factory CqlCode.fromCodeDef(CodeDef codeDef, String? codeSystemDef) {
    return CqlCode(
      code: codeDef.id,
      display: codeDef.display,
      system: codeSystemDef ?? codeDef.codeSystem?.name,
    );
  }
  String? code;
  String? display;
  String? system;
  String? version;

  @override
  bool equivalent(Object other) {
    if (other is CqlCode) {
      return code == other.code && system == other.system;
    } else {
      return false;
    }
  }

  @override
  bool? equal(Object other) {
    if (other is CqlCode) {
      // CQL three-valued equality: if a field is null on one side but not
      // the other, the result is null (uncertain). If a field differs (both
      // non-null), the result is false.
      bool? result = true;
      for (final pair in [
        [code, other.code],
        [display, other.display],
        [system, other.system],
        [version, other.version],
      ]) {
        final l = pair[0];
        final r = pair[1];
        if (l == null && r == null) {
          continue; // both null → same
        } else if (l == null || r == null) {
          result = null; // one null → uncertain
        } else if (l != r) {
          return false; // definite mismatch
        }
      }
      return result;
    } else {
      return false;
    }
  }

  @override
  String toString() {
    return 'CqlCode{ code: $code, system: $system, version: $version, display: $display }';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    } else {
      return other is CqlCode &&
          other.code == code &&
          other.display == display &&
          other.system == system &&
          other.version == version;
    }
  }

  @override
  int get hashCode {
    return code.hashCode ^
        display.hashCode ^
        system.hashCode ^
        version.hashCode;
  }
}
