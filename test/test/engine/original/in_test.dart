import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `in` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// The 2026-02-10 consolidation ("~75 unit tests into 8 spec-aligned files")
/// dropped these 7 cases; the value types are the cql engine's
/// (CqlBoolean for FhirBoolean, and so on), the titles and assertions are
/// as written.
void main() {
  group('In', () {
    test('''define "InIsTrue": 3 in Interval[0, 5]''', () async {
      final value = LiteralInteger(3);
      final interval =
          IntervalExpression(low: LiteralInteger(0), high: LiteralInteger(5));
      final inValue = In(operand: [value, interval]);
      final result = await inValue.execute({});
      expect(result, CqlBoolean(true));
    });
    test('''define "InIsFalse": -1 in Interval[0, 7]''', () async {
      final value = LiteralInteger(-1);
      final interval =
          IntervalExpression(low: LiteralInteger(0), high: LiteralInteger(7));
      final inValue = In(operand: [value, interval]);
      final result = await inValue.execute({});
      expect(result, CqlBoolean(false));
    });
    test('''define "InIsAlsoFalse": 3 in (null as Interval<Integer>)''',
        () async {
      final value = LiteralInteger(3);
      final interval =
          As(operand: LiteralNull(), asType: QName.parse('Interval'));
      final inValue = In(operand: [value, interval]);
      final result = await inValue.execute({'library': CqlLibrary()});
      expect(result, CqlBoolean(false));
    });
    test('''define "InIsTrue": 5 in { 1, 3, 5, 7 }''', () async {
      final value = LiteralInteger(3);
      final interval = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
          LiteralInteger(7),
        ],
      );
      final inValue = In(operand: [value, interval]);
      final result = await inValue.execute({});
      expect(result, CqlBoolean(true));
    });
    test('''define "InIsFalse": 5 in { 1, 3 }''', () async {
      final value = LiteralInteger(5);
      final interval = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
        ],
      );
      final inValue = In(operand: [value, interval]);
      final result = await inValue.execute({});
      expect(result, CqlBoolean(false));
    });
    test('''define "InIsAlsoFalse": 5 in null''', () async {
      final value = LiteralInteger(3);
      final interval = As(operand: LiteralNull(), asType: QName.parse('List'));
      final inValue = In(operand: [value, interval]);
      final result = await inValue.execute({'library': CqlLibrary()});
      expect(result, CqlBoolean(false));
    });
    test('''define "NullInIsTrue": null in { 1, 3, 5, null }''', () async {
      final value = LiteralNull();
      final interval = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(3),
          LiteralInteger(5),
          LiteralNull(),
        ],
      );
      final inValue = In(operand: [value, interval]);
      final result = await inValue.execute({});
      expect(result, CqlBoolean(true));
    });
  });
}
