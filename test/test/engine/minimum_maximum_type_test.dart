import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// CQL Reference (09-b), Minimum / Maximum: "defined for the Integer, Long,
/// Decimal, Quantity, Date, DateTime, and Time types." Another type is a
/// runtime error a definition carries as its value (the engine's rule for
/// an Exception); it was a bare UnimplementedError until 2026-10-06, an
/// Error that stopped the run (CqlArithmeticFunctionsTest.cql
/// `minimum Boolean`, marked invalid there).
void main() {
  test('minimum and maximum of Boolean name the type', () async {
    for (final node in <CqlExpression>[
      MinValue(valueType: QName.parse('Boolean')),
      MaxValue(valueType: QName.parse('Boolean')),
    ]) {
      await expectLater(
        node.execute({}),
        throwsA(
          isA<CqlException>().having(
            (e) => e.message,
            'message',
            allOf(contains('Boolean'), contains('Integer, Long, Decimal')),
          ),
        ),
      );
    }
  });

  test("the error is the definition's value; the others still evaluate",
      () async {
    final results = await libraryFromCql('''
library L version '1'
define "B": minimum Boolean
define "I": maximum Integer
''').execute() as Map<String, dynamic>;
    expect(results['B'], isA<CqlException>());
    expect(results['I'], CqlInteger(2147483647));
  });
}
