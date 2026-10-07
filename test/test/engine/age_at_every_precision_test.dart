import 'package:cql/src/cql_to_elm/library_from_cql.dart';
import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// CQL reference 09-b, AgeAt: AgeInYearsAt … AgeInSecondsAt. Until
/// 2026-10-07 AgeInWeeksAt, AgeInHoursAt, AgeInMinutesAt and AgeInSecondsAt
/// were not dispatched ("Function not found").
void main() {
  test('AgeInWeeksAt and the rest resolve against the Patient', () async {
    final library = libraryFromCql('''
library T
define "W": AgeInWeeksAt(@2026-01-29)
define "D": AgeInDaysAt(@2026-01-29)
define "M": AgeInMonthsAt(@2026-01-29)
''');
    // A Patient as a CQL Tuple (no resourceType, so no model is needed).
    final r = await library.execute({
      'Patient': <String, dynamic>{
        'birthDate': CqlDate.fromString('2026-01-01'),
      },
    }) as Map<String, dynamic>;
    expect(r['D'], CqlInteger(28));
    expect(r['W'], CqlInteger(4));
    expect(r['M'], CqlInteger(0));
  });
}
