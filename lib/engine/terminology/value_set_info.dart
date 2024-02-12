// Assuming ValueSet, CodeSystem, and CodeSystemInfo are defined elsewhere in your application
// Here's the Dart version of ValueSetInfo:

import '../../cql.dart';

class ValueSetInfo {
  String? id;
  String? version;
  final List<CodeSystemInfo> codeSystems = [];

  // Static method to create a ValueSetInfo from a ValueSet
  static ValueSetInfo fromValueSet(ValueSetDef vs) {
    var vsi = ValueSetInfo()
      ..id = vs.id
      ..version = vs.version;
    for (var cs in vs.codeSystem ?? <CodeSystemRef>[]) {
      vsi.codeSystems.add(CodeSystemInfo.fromCodeSystem(cs));
    }
    return vsi;
  }

  // Getter for ID
  String? get getId => id;

  // Setter for ID
  set setId(String id) => this.id = id;

  // Fluent API for setting ID
  ValueSetInfo withId(String id) {
    this.id = id;
    return this;
  }

  // Getter for version
  String? get getVersion => version;

  // Setter for version
  set setVersion(String version) => this.version = version;

  // Fluent API for setting version
  ValueSetInfo withVersion(String version) {
    this.version = version;
    return this;
  }

  // Method to add a CodeSystemInfo
  ValueSetInfo withCodeSystem(CodeSystemInfo codeSystem) {
    codeSystems.add(codeSystem);
    return this;
  }
}
