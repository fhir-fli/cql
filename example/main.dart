// A minimal end-to-end demo of the model-independent CQL engine:
// translate CQL source to an executable library, run it, and inspect the
// results. Run with: dart run example/main.dart
import 'package:cql/cql.dart';

Future<void> main() async {
  const source = '''
library Example version '1.0.0'

define "TheAnswer": 6 * 7
define "Greeting": 'Hello, ' + 'CQL!'
define "SystolicRange": Interval[90, 120]
define "InRange": 100 in Interval[90, 120]
define "DoseSum": 5 'mg' + 2.5 'mg'
define "SecondsInADay": 24 * 60 * 60
''';

  // 1. Translate CQL source text into an executable library (ELM).
  final library = libraryFromCql(source);
  print('Translated library: ${library.identifier?.id} '
      'version ${library.identifier?.version}');

  // 2. Execute every define statement. The result is a map keyed by the
  //    define names, holding CQL System values (CqlInteger, CqlString,
  //    CqlInterval, ...).
  final results = await library.execute() as Map<String, dynamic>;
  print('');
  for (final entry in results.entries) {
    print('${entry.key}: ${entry.value} (${entry.value.runtimeType})');
  }

  // 3. The translated library round-trips through ELM JSON, so it can be
  //    stored and reloaded without re-translating the CQL source.
  final elmJson = library.toJson();
  final reloaded = CqlLibrary.fromJson(elmJson);
  final reloadedResults = await reloaded.execute() as Map<String, dynamic>;
  print('');
  print('Reloaded from ELM JSON, TheAnswer is still: '
      '${reloadedResults['TheAnswer']}');
}
