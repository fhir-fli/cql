import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TimeFrom', () {
    test(
        'define "TimeFrom": time from DateTime(2012, 1, 1, 12, 30, 0, 0, -7) // @T12:30:00.000-07:00',
        () {
      final timeFrom = TimeFrom(
        operand: LiteralDateTime(value: '2012-01-01T12:30:00.000-07:00'),
      );

      expect(timeFrom.execute({}), equals(FhirTime('T12:30:00.000-07:00')));
    });
  });
}
