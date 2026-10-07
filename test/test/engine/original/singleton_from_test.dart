import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `singleton_from` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 3 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('SingletonFrom', () {
    test('define "SingletonFrom": singleton from { 1 } // 1', () async {
      final list = ListExpression(element: [LiteralInteger(1)]);
      final singletonFrom = SingletonFrom(operand: list);
      final result = await singletonFrom.execute({});
      expect(result, equals(CqlInteger(1)));
    });
    test('define "SingletonFromError": singleton from { 1, 3, 5 }', () async {
      final list = ListExpression(
        element: [LiteralInteger(1), LiteralInteger(3), LiteralInteger(5)],
      );
      final singletonFrom = SingletonFrom(operand: list);
      // 09-b, Singleton From: "If the list contains more than one element,
      // a run-time error is thrown." The engine's run-time error is
      // CqlException (the original test expected an ArgumentError).
      expect(() => singletonFrom.execute({}), throwsA(isA<CqlException>()));
    });
    test('define "SingletonFromIsNull": singleton from (null as List<Integer>)',
        () async {
      final singletonFrom = SingletonFrom(operand: LiteralNull());
      final result = await singletonFrom.execute({});
      expect(result, isNull);
    });
  });
}
