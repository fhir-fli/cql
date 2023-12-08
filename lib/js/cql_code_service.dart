import 'cql.dart';

class CodeService implements TerminologyProvider {
  late ValueSetObject valueSets;

  CodeService([ValueSetDictionary? valueSetsJson]) {
    valueSets = ValueSetObject();
    for (var oid in valueSetsJson?.entries.keys ?? <String>[]) {
      valueSets.entries[oid] = {};
      for (var version in valueSetsJson?.entries[oid]!.keys ?? <String>[]) {
        final codes =
            valueSetsJson?.entries[oid]![version]!.map<CqlCode>((code) {
          return CqlCode(code['code'] ?? '', code['system'], code['version']);
        }).toList();
        valueSets.entries[oid]![version] = CqlValueSet(oid, version, codes);
      }
    }
  }

  List<CqlValueSet> findValueSetsByOid(String oid) {
    return valueSets.entries[oid] != null
        ? valueSets.entries[oid]!.values.toList()
        : [];
  }

  CqlValueSet? findValueSet(String oid, [String? version]) {
    if (version != null) {
      return valueSets.entries[oid] != null
          ? valueSets.entries[oid]![version]
          : null;
    } else {
      final results = findValueSetsByOid(oid);
      if (results.isEmpty) {
        return null;
      } else {
        return results.reduce(
            (a, b) => (a.version ?? '').compareTo(b.version ?? '') > 0 ? a : b);
      }
    }
  }
}
