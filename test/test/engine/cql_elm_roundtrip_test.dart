import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:cql/src/internal.dart';
import 'package:test/test.dart';
import 'package:ucum/ucum.dart';

/// Regression tests for serializing a translated library to ELM JSON and
/// reloading it. The scalar `Literal` values in ELM JSON are plain
/// strings/numbers, not maps — a wrong cast in `Literal.fromJson` once broke
/// this round trip for every translated scalar literal.
void main() {
  group('ELM JSON round trip', () {
    test('translated scalar literals reload and execute identically', () async {
      final library = libraryFromCql("""
library RoundTrip version '1.0.0'

define "IntProduct": 6 * 7
define "StringConcat": 'Hello, ' + 'CQL!'
define "DecimalSum": 1.5 + 2.25
define "BoolAnd": true and true
define "LongValue": 25L + 5L
define "QuantitySum": 5 'mg' + 2.5 'mg'
define "IntervalContains": 100 in Interval[90, 120]
""");

      final reloaded = CqlLibrary.fromJson(library.toJson());
      final results = await reloaded.execute() as Map<String, dynamic>;

      expect(results['IntProduct'], CqlInteger(42));
      expect(results['StringConcat'], 'Hello, CQL!');
      expect(results['DecimalSum'], CqlDecimal(3.75));
      expect(results['BoolAnd'], CqlBoolean(true));
      expect(results['LongValue'], CqlLong.fromNum(30));
      expect(
        results['QuantitySum'],
        ValidatedQuantity.fromString("7.5 'mg'"),
      );
      expect(results['IntervalContains'], CqlBoolean(true));
    });

    test('reloaded library matches original execution results', () async {
      final library = libraryFromCql("""
library RoundTrip2 version '1.0.0'

define "X": (3 + 4) * 2
""");
      final original = await library.execute() as Map<String, dynamic>;
      final reloaded = await CqlLibrary.fromJson(library.toJson()).execute()
          as Map<String, dynamic>;
      expect(reloaded['X'], original['X']);
      expect(reloaded['X'], CqlInteger(14));
    });
  });
}
