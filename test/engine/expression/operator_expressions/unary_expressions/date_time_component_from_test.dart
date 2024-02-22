import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DateTimeComponentFrom', () {
    test(
        'define "MonthFrom": month from DateTime(2012, 1, 1, 12, 30, 0, 0, -7) // 1',
        () {
      final dateTimeComponentFrom = DateTimeComponentFrom(
        precision: CqlDateTimePrecision.month,
        operand: LiteralDateTime(value: '2012-01-01T12:30:00.000-07:00'),
      );

      expect(dateTimeComponentFrom.execute({}), equals(FhirInteger(1)));
    });
    test('define "MonthFromIsNull": month from DateTime(2012)', () {
      final dateTimeComponentFrom = DateTimeComponentFrom(
        precision: CqlDateTimePrecision.month,
        operand: LiteralDateTime(value: '2012'),
      );

      expect(dateTimeComponentFrom.execute({}), equals(null));
    });
  });
}
