import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DateFrom', () {
    test(
        'define "DateFrom": date from DateTime(2012, 1, 1, 12, 30, 0, 0, -7) // @2012-01-01',
        () {
      final dateTimeComponentFrom = DateFrom(
        operand: LiteralDateTime(value: '2012-01-01T12:30:00.000-07:00'),
      );

      expect(dateTimeComponentFrom.execute({}), equals(FhirDate('2012-01-01')));
    });
  });
}
