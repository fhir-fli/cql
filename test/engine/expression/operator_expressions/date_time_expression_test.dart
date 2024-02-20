import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DateTimeExpression', () {
    test('Year', () {
      final DateTimeExpression dateTimeExpression = DateTimeExpression(
        year: LiteralInteger(value: 2021),
      );
      expect(dateTimeExpression.execute({}), FhirDateTime('2021'));
    });

    test('Year, Month', () {
      final DateTimeExpression dateTimeExpression = DateTimeExpression(
        year: LiteralInteger(value: 2021),
        month: LiteralInteger(value: 12),
      );
      expect(dateTimeExpression.execute({}), FhirDateTime('2021-12'));
    });

    test('Year, Month, Day', () {
      final DateTimeExpression dateTimeExpression = DateTimeExpression(
        year: LiteralInteger(value: 2021),
        month: LiteralInteger(value: 12),
        day: LiteralInteger(value: 31),
      );
      expect(dateTimeExpression.execute({}), FhirDateTime('2021-12-31'));
    });

    test('Year, Month, Day, Hour', () {
      final DateTimeExpression dateTimeExpression = DateTimeExpression(
        year: LiteralInteger(value: 2021),
        month: LiteralInteger(value: 12),
        day: LiteralInteger(value: 31),
        hour: LiteralInteger(value: 23),
      );
      expect(dateTimeExpression.execute({}), FhirDateTime('2021-12-31T23'));
    });

    test('Year, Month, Day, Hour, Minute', () {
      final DateTimeExpression dateTimeExpression = DateTimeExpression(
        year: LiteralInteger(value: 2021),
        month: LiteralInteger(value: 12),
        day: LiteralInteger(value: 31),
        hour: LiteralInteger(value: 23),
        minute: LiteralInteger(value: 59),
      );
      expect(dateTimeExpression.execute({}), FhirDateTime('2021-12-31T23:59'));
    });

    test('Year, Month, Day, Hour, Minute, Second', () {
      final DateTimeExpression dateTimeExpression = DateTimeExpression(
        year: LiteralInteger(value: 2021),
        month: LiteralInteger(value: 12),
        day: LiteralInteger(value: 31),
        hour: LiteralInteger(value: 23),
        minute: LiteralInteger(value: 59),
        second: LiteralInteger(value: 59),
      );
      expect(
          dateTimeExpression.execute({}), FhirDateTime('2021-12-31T23:59:59'));
    });

    test('Year, Month, Day, Hour, Minute, Second, Millisecond', () {
      final DateTimeExpression dateTimeExpression = DateTimeExpression(
        year: LiteralInteger(value: 2021),
        month: LiteralInteger(value: 12),
        day: LiteralInteger(value: 31),
        hour: LiteralInteger(value: 23),
        minute: LiteralInteger(value: 59),
        second: LiteralInteger(value: 59),
        millisecond: LiteralInteger(value: 999),
      );
      expect(dateTimeExpression.execute({}),
          FhirDateTime('2021-12-31T23:59:59.999'));
    });

    test('Year, Month, Day, Hour, Minute, Second, Millisecond, TimezoneOffset',
        () {
      final DateTimeExpression dateTimeExpression = DateTimeExpression(
        year: LiteralInteger(value: 2021),
        month: LiteralInteger(value: 12),
        day: LiteralInteger(value: 31),
        hour: LiteralInteger(value: 23),
        minute: LiteralInteger(value: 59),
        second: LiteralInteger(value: 59),
        millisecond: LiteralInteger(value: 999),
        timezoneOffset: LiteralString(value: '+05:00'),
      );
      expect(dateTimeExpression.execute({}),
          FhirDateTime('2021-12-31T23:59:59.999+05:00'));
    });
  });
}
