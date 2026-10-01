import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// SameAs between an interval and a point builds the point's own interval
/// and compares boundaries. The only failure it absorbs is an open boundary
/// at the calendar's edge, whose successor or predecessor CQL defines as
/// null ("If the result of the operation cannot be represented ... the
/// result is null").
void main() {
  test('a point and its own closed interval are the same', () async {
    final d = LiteralDate('2024-05-01');
    final ivl = IntervalExpression(low: d, high: d);
    expect(
      await SameAs(operand: [ivl, LiteralDate('2024-05-01')]).execute({}),
      CqlBoolean(true),
    );
    expect(
      await SameAs(operand: [LiteralDate('2024-05-02'), ivl]).execute({}),
      CqlBoolean(false),
    );
  });

  test('an open low boundary on the last day is null, not an error', () async {
    final last = LiteralDate('9999-12-31');
    final ivl = IntervalExpression(low: last, high: last, lowClosed: false);
    expect(await SameAs(operand: [ivl, last]).execute({}), isNull);
    expect(await SameAs(operand: [last, ivl]).execute({}), isNull);
  });
}
