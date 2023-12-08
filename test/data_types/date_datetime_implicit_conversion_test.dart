import 'package:cql/data_types/date_time.dart';
import 'package:cql/data_types/uncertainty.dart';
import 'package:test/test.dart';

void main() {
  /// Implicit Conversion Of First Variable
  group('DateTime.differenceBetween with implicit conversion of first variable',
      () {
    test('should handle difference between', () {
      final a = CqlDate.parse('2009-06-15');
      final b = CqlDateTime.parse('2009-06-15T12:37:45.0');
      expect(a?.differenceBetween(b, CqlDateTimeUnit.year),
          equals(Uncertainty(low: 0)));
      expect(a?.differenceBetween(b, CqlDateTimeUnit.month),
          equals(Uncertainty(low: 0)));
      expect(a?.differenceBetween(b, CqlDateTimeUnit.day),
          equals(Uncertainty(low: 0)));
      expect(a?.differenceBetween(b, CqlDateTimeUnit.hour),
          equals(Uncertainty(low: -11, high: 12)));
      expect(a?.differenceBetween(b, CqlDateTimeUnit.minute),
          equals(Uncertainty(low: -682, high: 757)));
      expect(a?.differenceBetween(b, CqlDateTimeUnit.second),
          equals(Uncertainty(low: -40934, high: 45465)));
      expect(
          a?.differenceBetween(b, CqlDateTimeUnit.millisecond),
          equals(
            Uncertainty(low: -40934999, high: 45465000),
          ));
    });
  });

  group('DateTime.durationBetween with implicit conversion of first variable',
      () {
    test('should handle duration', () {
      final a = CqlDateTime.fromDateTime(DateTime.parse('2009-06-15'));
      final b =
          CqlDateTime.fromDateTime(DateTime.parse('2009-06-15T12:37:45.0'));
      expect(a.durationBetween(b, CqlDateTimeUnit.year),
          equals(Uncertainty(low: 0)));
      expect(a.durationBetween(b, CqlDateTimeUnit.month),
          equals(Uncertainty(low: 0)));
      expect(a.durationBetween(b, CqlDateTimeUnit.week),
          equals(Uncertainty(low: 0)));
      expect(a.durationBetween(b, CqlDateTimeUnit.day),
          equals(Uncertainty(low: 0)));
      expect(a.durationBetween(b, CqlDateTimeUnit.hour),
          equals(Uncertainty(low: -11, high: 12)));
      expect(a.durationBetween(b, CqlDateTimeUnit.minute),
          equals(Uncertainty(low: -682, high: 757)));
      expect(a.durationBetween(b, CqlDateTimeUnit.second),
          equals(Uncertainty(low: -40934, high: 45465)));
      expect(
          a.durationBetween(b, CqlDateTimeUnit.millisecond),
          equals(
            Uncertainty(low: -40934999, high: 45465000),
          ));
    });
  });
}
