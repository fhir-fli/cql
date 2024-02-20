import 'package:cql/cql.dart';
import 'package:fhir/primitive_types/primitive_types.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TimeExpression', () {
    test('Hour', () {
      final time = TimeExpression(hour: LiteralInteger(value: 12));
      expect(time.execute({}), FhirTime('12'));
    });

    test('Hour, Minute', () {
      final time = TimeExpression(
        hour: LiteralInteger(value: 12),
        minute: LiteralInteger(value: 30),
      );
      expect(time.execute({}), FhirTime('12:30'));
    });

    test('Hour, Minute, Second', () {
      final time = TimeExpression(
        hour: LiteralInteger(value: 12),
        minute: LiteralInteger(value: 30),
        second: LiteralInteger(value: 45),
      );
      expect(time.execute({}), FhirTime('12:30:45'));
    });

    test('Hour, Minute, Second, Millisecond', () {
      final time = TimeExpression(
        hour: LiteralInteger(value: 12),
        minute: LiteralInteger(value: 30),
        second: LiteralInteger(value: 45),
        millisecond: LiteralInteger(value: 123),
      );
      expect(time.execute({}), FhirTime('12:30:45.123'));
    });
  });
}
