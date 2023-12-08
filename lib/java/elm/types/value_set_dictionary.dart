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
