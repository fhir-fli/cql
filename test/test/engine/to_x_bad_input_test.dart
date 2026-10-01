import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Each To* conversion answers null for input it cannot read, as its CQL
/// section says ("If the input string is not formatted correctly, or cannot
/// be interpreted as a valid ... value, the result is null"). Until
/// 2026-10-01 several threw instead, and ConvertsTo* hid that with a
/// catch-all.
void main() {
  test('ToDate: not a date', () async {
    expect(await ToDate(operand: LiteralString('abc')).execute({}), isNull);
    expect(
      await ToDate(operand: LiteralString('2024-13-01')).execute({}),
      isNull,
    );
    expect(
      (await ToDate(operand: LiteralString('2024-02-29')).execute({})
              as CqlDate)
          .valueString,
      '2024-02-29',
    );
  });

  test('ToLong: outside 64 bits', () async {
    expect(
      await ToLong(operand: LiteralString('9223372036854775808')).execute({}),
      isNull,
    );
    expect(
      (await ToLong(operand: LiteralString('9223372036854775807')).execute({}))
          ?.valueString,
      '9223372036854775807',
    );
  });

  test('ToInteger: a Long outside the Integer range', () async {
    expect(
      await ToInteger(operand: LiteralLong(BigInt.parse('2147483648')))
          .execute({}),
      isNull,
    );
    expect(
      (await ToInteger(operand: LiteralLong(BigInt.parse('2147483647')))
              .execute({}))
          ?.valueNum,
      2147483647,
    );
  });

  test('ToRatio and ToQuantity: no leading number', () async {
    expect(await ToRatio(operand: LiteralString('abc:1')).execute({}), isNull);
    expect(await ToRatio(operand: LiteralString('1:x')).execute({}), isNull);
    expect(await ToQuantity(operand: LiteralString('abc')).execute({}), isNull);
    expect(
      (await ToQuantity(operand: LiteralString("5 'mg'")).execute({}))?.unit,
      'mg',
    );
  });
}
