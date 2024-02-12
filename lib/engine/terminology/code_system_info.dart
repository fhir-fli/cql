// Assuming CodeSystem is defined elsewhere in your application
import '../../cql.dart';

class CodeSystemInfo {
  String? id;
  String? version;

  // Static method to create a CodeSystemInfo from a CodeSystem
  static CodeSystemInfo fromCodeSystem(CodeSystemRef cs) {
    return CodeSystemInfo()
      ..id = cs.localId
      ..version = cs.name;
  }

  // Getter for ID
  String? get getId => id;

  // Setter for ID
  set setId(String? id) => this.id = id;

  // Fluent API for setting ID
  CodeSystemInfo withId(String id) {
    this.id = id;
    return this;
  }

  // Getter for version
  String? get getVersion => version;

  // Setter for version
  set setVersion(String? version) => this.version = version;

  // Fluent API for setting version
  CodeSystemInfo withVersion(String version) {
    this.version = version;
    return this;
  }
}
