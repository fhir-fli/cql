import '../cql.dart';

class ValueSetDictionary {
  Map<String, Map<String, List<Map<String, String>>>> entries = {};

  void addEntry(
    String oid,
    String version,
    List<Map<String, String>> codes,
  ) {
    entries[oid] ??= {};
    entries[oid]![version] = codes;
  }
}

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

abstract class TerminologyProvider {
  Future<List<CqlValueSet>> findValueSetsByOid(String oid);
  Future<CqlValueSet?> findValueSet(String oid, [String? version]);
}
