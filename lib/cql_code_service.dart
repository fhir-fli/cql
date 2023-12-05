import 'cql.dart';

class CodeService implements TerminologyProvider {
  late Map<String, ValueSetObject> valueSets;

  CodeService([ValueSetDictionary valueSetsJson = const {}]) {
    valueSets = {};
    valueSetsJson.forEach((oid, versions) {
      valueSets[oid] = {};
      versions.forEach((version, codes) {
        final valueSetCodes = codes
            .map((code) => Code(code['code'], code['system'], code['version']))
            .toList();
        valueSets[oid]![version] = ValueSet(oid, version, valueSetCodes);
      });
    });
  }

  List<CqlValueSet> findValueSetsByOid(String oid) {
    return valueSets[oid]?.values.toList() ?? [];
  }

  CqlValueSet? findValueSet(String oid, [String? version]) {
    if (version != null) {
      return valueSets[oid]?[version];
    } else {
      final results = findValueSetsByOid(oid);
      if (results.isEmpty) {
        return null;
      } else {
        return results.reduce((a, b) => a.version! > b.version! ? a : b);
      }
    }
  }
}
