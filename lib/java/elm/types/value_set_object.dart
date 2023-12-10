import '../../../cql/cql-to-elm/elm/elm.dart';

class ValueSetObject {
  Map<String, Map<String, CqlValueSet>> entries = {};

  void addEntry(
    String oid,
    String version,
    CqlValueSet valueSet,
  ) {
    entries[oid] ??= {};
    entries[oid]![version] = valueSet;
  }
}
