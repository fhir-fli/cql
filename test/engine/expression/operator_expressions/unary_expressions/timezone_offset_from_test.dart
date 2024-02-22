import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TimezoneOffsetFrom', () {
    test(
        'define "TimeZoneOffsetFrom": timezoneoffset from DateTime(2012, 1, 1, 12, 30, 0, 0, -7) // -7.0',
        () {
      final timezoneOffsetFrom = TimezoneOffsetFrom(
        operand: LiteralDateTime(value: '2012-01-01T12:30:00.000-07:00'),
      );

      expect(timezoneOffsetFrom.execute({}), equals(FhirDecimal(-7.0)));
    });
  });
}
