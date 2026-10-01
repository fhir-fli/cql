import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// tryParse on every primitive: null for input the type cannot read, the
/// value otherwise. Each catch names what its constructor throws
/// (FormatException for a string that is not a value, ArgumentError for
/// a wrong type) instead of absorbing everything.
void main() {
  test('a string that is not a value of the type is null', () {
    expect(CqlBoolean.tryParse('maybe'), isNull);
    expect(CqlDecimal.tryParse('1.2.3'), isNull);
    expect(CqlInteger.tryParse('1.5'), isNull);
    expect(CqlLong.tryParse('12x'), isNull);
    expect(CqlDate.tryParse('2024-13-01'), isNull);
    expect(CqlDate.tryParse('2023-02-29'), isNull);
    expect(CqlDateTime.tryParse('2024-01-01T25:00'), isNull);
    expect(CqlTime.tryParse('25:00'), isNull);
  });

  test('a wrong runtime type is null', () {
    expect(CqlBoolean.tryParse(Object()), isNull);
    expect(CqlDecimal.tryParse(Object()), isNull);
    expect(CqlInteger.tryParse(1.5), isNull);
    expect(CqlLong.tryParse(Object()), isNull);
    expect(CqlDate.tryParse(42), isNull);
    expect(CqlTime.tryParse(42), isNull);
  });

  test('a value of the type parses', () {
    expect(CqlBoolean.tryParse('TRUE')?.valueBoolean, isTrue);
    expect(CqlDecimal.tryParse('1.25')?.valueNum, 1.25);
    expect(CqlInteger.tryParse('42')?.valueNum, 42);
    expect(
        CqlLong.tryParse('9007199254740993')?.valueString, '9007199254740993');
    expect(CqlDate.tryParse('2024-02-29')?.valueString, '2024-02-29');
    expect(CqlDateTime.tryParse(DateTime.utc(2024, 1, 2))?.year, 2024);
    expect(CqlTime.tryParse('14:30')?.valueString, '14:30');
    expect(CqlString.tryParse('x')?.valueString, 'x');
    expect(CqlString.tryParse(42), isNull);
  });

  test('CqlNumber reports a value it cannot parse as a FormatException', () {
    expect(
      () => CqlInteger.tryParse('7')!.valueNum,
      returnsNormally,
    );
  });
}
