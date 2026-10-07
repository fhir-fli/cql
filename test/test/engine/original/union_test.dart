// ignore_for_file: lines_longer_than_80_chars
// The test titles are Grey's original CQL expressions, kept verbatim.

import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Grey's original engine tests for `union` (fhir_r4_cql
/// test/engine/expression, 2025, at fhir_r4 c2ae05ab), restored 2026-10-06.
/// All 5 cases of the file, titles and assertions as written; the
/// value types are the cql engine's (CqlBoolean for FhirBoolean, and so on).
void main() {
  group('union', () {
    test(
        'define "Union": Interval[1, 5] union Interval[3, 7] // Interval[1, 7]',
        () async {
      final interval1 = LiteralIntegerInterval(
        low: LiteralInteger(1),
        high: LiteralInteger(5),
      );
      final interval2 = LiteralIntegerInterval(
        low: LiteralInteger(3),
        high: LiteralInteger(7),
      );
      final union = Union(operand: [interval1, interval2]);
      final result = await union.execute({});
      expect(
        result,
        equals(CqlInterval(low: CqlInteger(1), high: CqlInteger(7))),
      );
    });
    test(
        'define "UnionIsNull": Interval[3, 5] union (null as Interval<Integer>)',
        () async {
      final interval1 = LiteralIntegerInterval(
        low: LiteralInteger(3),
        high: LiteralInteger(5),
      );
      final interval2 = LiteralNull();
      final union = Union(operand: [interval1, interval2]);
      final result = await union.execute({});
      expect(result, equals(null));
    });
    test('define "Union": { 1, 2, 3 } union { 4, 5 } // { 1, 2, 3, 4, 5 }',
        () async {
      final set1 = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(2),
          LiteralInteger(3),
        ],
      );
      final set2 = ListExpression(
        element: [
          LiteralInteger(4),
          LiteralInteger(5),
        ],
      );
      final union = Union(operand: [set1, set2]);
      final result = await union.execute({});
      expect(
        result,
        equals([
          CqlInteger(1),
          CqlInteger(2),
          CqlInteger(3),
          CqlInteger(4),
          CqlInteger(5),
        ]),
      );
    });
    test(
        'define "UnionAlternateSyntax": { 1, 2, 3 } | { 4, 5 } // { 1, 2, 3, 4, 5 }',
        () async {
      final set1 = ListExpression(
        element: [
          LiteralInteger(1),
          LiteralInteger(2),
          LiteralInteger(3),
        ],
      );
      final set2 = ListExpression(
        element: [
          LiteralInteger(4),
          LiteralInteger(5),
        ],
      );
      final union = Union(operand: [set1, set2]);
      final result = await union.execute({});
      expect(
        result,
        equals([
          CqlInteger(1),
          CqlInteger(2),
          CqlInteger(3),
          CqlInteger(4),
          CqlInteger(5),
        ]),
      );
    });
    test('define "UnionWithNull": null union { 4, 5 } // { 4, 5 }', () async {
      final set1 = LiteralNull();
      final set2 = ListExpression(
        element: [
          LiteralInteger(4),
          LiteralInteger(5),
        ],
      );
      final union = Union(operand: [set1, set2]);
      final result = await union.execute({});
      expect(
        result,
        equals([
          CqlInteger(4),
          CqlInteger(5),
        ]),
      );
    });
  });
}
