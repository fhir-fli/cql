import '../../cql.dart';

class CodeType implements CqlType {
  String? code;
  String? display;
  String? system;
  String? version;

  CodeType({this.code, this.display, this.system, this.version});

  factory CodeType.fromJson(Map<String, dynamic> json) {
    return CodeType(
      code: json['code'],
      display: json['display'],
      system: json['system'],
      version: json['version'],
    );
  }

  @override
  bool equivalent(Object other) {
    if (other is CodeType) {
      return code == other.code && system == other.system;
    } else {
      return false;
    }
  }

  @override
  bool equal(Object other) {
    if (other is CodeType) {
      return code == other.code &&
          display == other.display &&
          system == other.system &&
          version == other.version;
    } else {
      return false;
    }
  }

  @override
  String toString() {
    return "Code { code: $code, system: $system, version: $version, display: $display }";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    } else {
      return other is CodeType &&
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
