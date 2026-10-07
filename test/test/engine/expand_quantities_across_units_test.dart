import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:test/test.dart';

/// `expand` over quantity intervals whose `per` is in another unit.
/// CQL reference 09-b, Expand (read whole 2026-10-07): "For intervals of
/// quantities, the semantics of quantity arithmetic and comparison apply,
/// including unit conversion and compatible unit conversion." The spec
/// gives no precision rule for the converted per; the reference engine's
/// suite (cqf CqlTestSuite, QtyIvlExpand_ClosedSingleGPerMG and
/// QtyIvlExpand_ClosedSingleMGPerGTrunc) answers from UCUM decimal
/// arithmetic, where 1 'mg' in g is 0.0010 (four places) and 1 'g' in mg
/// is 1000, so the sub-interval highs sit at 0.0001 and 1 below the next
/// start. Until 2026-10-07 the per stayed in its own unit and the
/// predecessor subtracted 1 'g', which made every sub-interval invalid.
void main() {
  Future<String> answer(String expression) async {
    final lib = libraryFromCql('library T\ndefine "X": $expression');
    final result = await lib.execute() as Map<String, dynamic>;
    return '${result['X']}';
  }

  test("expand { Interval[2 'g', 2.003 'g'] } per 1 'mg' (CqlTestSuite)",
      () async {
    expect(
      await answer("expand { Interval[2 'g', 2.003 'g'] } per 1 'mg'"),
      "[Interval[2 'g', 2.0009 'g'], Interval[2.0010 'g', 2.0019 'g'], "
      "Interval[2.0020 'g', 2.0029 'g']]",
    );
  });

  test("expand { Interval[2999 'mg', 4200 'mg'] } per 1 'g' (CqlTestSuite)",
      () async {
    expect(
      await answer("expand { Interval[2999 'mg', 4200 'mg'] } per 1 'g'"),
      "[Interval[2999 'mg', 3998 'mg']]",
    );
  });

  test(
      "expand Interval[1.0 'g', 1.002 'g'] per 1 'mg' lists the starts of "
      'the sub-intervals that end on or before the upper boundary', () async {
    // 09-b Expand: "contribute all the intervals of size per that start on
    // or after the lower boundary and end on or before the upper boundary";
    // for the single-interval overload "the starting point of each
    // resulting interval is returned". [1.0020, 1.0029] ends after 1.002.
    expect(
      await answer("expand Interval[1.0 'g', 1.002 'g'] per 1 'mg'"),
      "[1.0 'g', 1.0010 'g']",
    );
  });

  test('a per in a unit that does not convert answers null', () async {
    expect(
      await answer("expand { Interval[2 'g', 4 'g'] } per 1 'm'"),
      'null',
    );
  });
}
