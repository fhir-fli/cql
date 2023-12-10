import '../../../cql/cql-to-elm/elm/elm.dart';

abstract class TerminologyProvider {
  List<CqlValueSet> findValueSetsByOid(String oid);
  CqlValueSet? findValueSet(String oid, [String? version]);
}
