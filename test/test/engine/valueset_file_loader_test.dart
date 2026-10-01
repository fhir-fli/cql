import 'dart:convert';
import 'dart:io';

import 'package:cql/src/engine/retrieve/valueset_file_loader_io.dart';
import 'package:test/test.dart';

/// The loader skips a file that is not JSON and a file it cannot read, and
/// nothing else: those are the two exceptions its catches name.
void main() {
  late Directory dir;
  setUp(() {
    dir = Directory.systemTemp.createTempSync('cql_vs_');
    File('${dir.path}/good.json').writeAsStringSync(
      jsonEncode({
        'resourceType': 'ValueSet',
        'url': 'http://example.org/vs',
        'expansion': {
          'contains': [
            {'system': 'http://loinc.org', 'code': '8480-6'},
          ],
        },
      }),
    );
    File('${dir.path}/bad.json').writeAsStringSync('this is not json {');
    File('${dir.path}/notes.txt').writeAsStringSync('ignored');
  });
  tearDown(() => dir.deleteSync(recursive: true));

  test('a directory load keeps the ValueSet and skips the rest', () {
    final loaded = ValueSetFileLoader.loadFromDirectory(dir.path);
    expect(loaded.keys, ['http://example.org/vs']);
    expect(
      (loaded['http://example.org/vs'] as List).single,
      {'system': 'http://loinc.org', 'code': '8480-6'},
    );
  });

  test('a single file: not JSON or missing is null', () {
    expect(ValueSetFileLoader.loadFromFile('${dir.path}/bad.json'), isNull);
    expect(ValueSetFileLoader.loadFromFile('${dir.path}/missing.json'), isNull);
    expect(
      ValueSetFileLoader.loadFromFile('${dir.path}/good.json')?.key,
      'http://example.org/vs',
    );
  });
}
