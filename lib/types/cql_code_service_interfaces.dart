import '../cql.dart';

/// Lookup of all codes used based on their ValueSet
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

/// Lookup of ValueSet objects
class ValueSetObject {
  Map<String, Map<String, ElmValueSet>> entries = {};

  void addEntry(
    String oid,
    String version,
    ElmValueSet valueSet,
  ) {
    entries[oid] ??= {};
    entries[oid]![version] = valueSet;
  }
}

/// Structure of an implementation to look up ValueSets based on oid and version
abstract class TerminologyProvider {
  Future<List<ElmValueSet>> findValueSetsByOid(String oid);
  Future<ElmValueSet?> findValueSet(String oid, [String? version]);
}
