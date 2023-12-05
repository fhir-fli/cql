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

class ValueSetDictionaryExtended {
  final Map<String, Map<String, List<ValueSetCode>>> _valueSets;

  ValueSetDictionaryExtended(this._valueSets);

  Map<String, Map<String, List<ValueSetCode>>> get valueSets => _valueSets;

  void addEntry(String oid, String version, List<ValueSetCode> codes) {
    _valueSets[oid] ??= {};
    _valueSets[oid]![version] = codes;
  }
}

class ValueSetObjectExtended {
  final Map<String, Map<String, ValueSet>> _valueSetObjects;

  ValueSetObjectExtended(this._valueSetObjects);

  Map<String, Map<String, ValueSet>> get valueSetObjects => _valueSetObjects;

  void addEntry(String oid, String version, ValueSet valueSet) {
    _valueSetObjects[oid] ??= {};
    _valueSetObjects[oid]![version] = valueSet;
  }
}

abstract class TerminologyProviderExtended {
  List<ValueSet> findValueSetsByOid(String oid);
  ValueSet? findValueSet(String oid, [String? version]);
}
