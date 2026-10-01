import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// A date or time no calendar holds is refused at construction, on every
/// path, with a FormatException naming the field. These checks were
/// `assert`s until 2026-10-01: a compiled app skips asserts, so an app
/// carried February 30th as a date while the tests threw.
void main() {
  group('CqlDate / CqlDateTime refuse impossible values', () {
    test('a day the month does not have', () {
      expect(
        () => CqlDate.fromUnits(year: 2023, month: 2, day: 29),
        throwsA(
          isA<FormatException>()
              .having((e) => e.message, 'message', contains('Invalid day')),
        ),
      );
      expect(
        () => CqlDate.fromString('2024-02-30'),
        throwsA(isA<FormatException>()),
      );
    });

    test('a leap day in a leap year is fine', () {
      expect(CqlDate.fromUnits(year: 2024, month: 2, day: 29).day, 29);
    });

    test('year outside 1..9999', () {
      expect(() => CqlDateTime.fromUnits(year: 0), throwsFormatException);
      expect(() => CqlDateTime.fromUnits(year: 10000), throwsFormatException);
    });

    test('a finer field without the coarser one', () {
      expect(
        () => CqlDateTime.fromBase(
          valueString: null,
          year: 2024,
          month: null,
          day: 5,
          hour: null,
          minute: null,
          second: null,
          millisecond: null,
          microsecond: null,
          timeZoneOffset: null,
          isUtc: false,
        ),
        throwsA(
          isA<FormatException>().having((e) => e.message, 'message',
              contains('Day cannot be provided without a month')),
        ),
      );
    });

    test('hour, minute, second, millisecond and offset ranges', () {
      CqlDateTime at({int? h, int? mi, int? s, int? ms, num? tz}) =>
          CqlDateTime.fromUnits(
            year: 2024,
            month: 1,
            day: 1,
            hour: h ?? 0,
            minute: mi ?? 0,
            second: s ?? 0,
            millisecond: ms ?? 0,
            timeZoneOffset: tz,
          );
      expect(() => at(h: 24), throwsFormatException);
      expect(() => at(mi: 60), throwsFormatException);
      expect(() => at(s: 60), throwsFormatException);
      expect(() => at(ms: 1000), throwsFormatException);
      expect(() => at(tz: 15), throwsFormatException);
      expect(at(h: 23, mi: 59, s: 59, ms: 999, tz: 14).hour, 23);
    });
  });

  group('the string parser reads the whole string or none of it', () {
    test('a string that is not wholly a date-time is refused', () {
      // Before 2026-10-01 the unanchored pattern matched a prefix and
      // dropped the rest: '2024-13-01' read as 2024.
      for (final bad in [
        '2024-13-01',
        '2024-1-1',
        '20240101',
        '2024-01-01T25:00',
        'abc',
        '14:30',
      ]) {
        expect(() => CqlDate.fromString(bad), throwsFormatException,
            reason: bad);
        expect(
          () => CqlDateTime.fromString(bad),
          throwsFormatException,
          reason: bad,
        );
      }
    });

    test("CQL's DateTime literal forms with a trailing T parse", () {
      // CQL DATETIME is '@' DATE 'T' (TIME OFFSET?)? with DATE = YYYY(-MM(-DD)?)?
      expect(CqlDateTime.fromString('2016T').valueString, '2016');
      expect(CqlDateTime.fromString('2012-01T').valueString, '2012-01');
      expect(CqlDateTime.fromString('2012-01-01T').valueString, '2012-01-01');
      expect(
        CqlDateTime.fromString('2012-01-01T12:30-05:00').valueString,
        '2012-01-01T12:30-05:00',
      );
      expect(() => CqlDateTime.fromString('2016T10'), throwsFormatException);
    });

    test('a UTC DateTime round-trips (no doubled Z)', () {
      final v = CqlDateTime.fromDateTime(DateTime.utc(2024, 1, 2, 3, 4, 5));
      expect(v.valueString, '2024-01-02T03:04:05.000Z');
      expect(v.isUtc, isTrue);
    });
  });
}
