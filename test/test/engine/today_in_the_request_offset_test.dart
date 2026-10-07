import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// CQL reference 09-b, Today / TimeOfDay: the date and time of day "of the
/// start timestamp associated with the evaluation request", read in that
/// timestamp's own timezone offset. Until 2026-10-06 both rendered the
/// instant in UTC first, so a request stamped 22:30 at UTC-4 gave
/// tomorrow's date and 02:30.
void main() {
  final context = <String, dynamic>{
    'startTimestamp': CqlDateTime.fromString('2026-10-06T22:30:15.250-04:00'),
  };
  test('Today is the request date in its own offset', () async {
    expect(await Today().execute(context), CqlDate.fromString('2026-10-06'));
  });
  test('TimeOfDay is the request time in its own offset', () async {
    expect(await TimeOfDay().execute(context), CqlTime('22:30:15.250'));
  });
}
