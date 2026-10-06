import 'dart:convert';
import 'dart:io';

import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// expression.xsd DateTime: `timezoneOffset` is its own optional element.
/// `DateTimeExpression.toJson` wrote it only after a `millisecond`, so a
/// DateTime with seconds, an offset and no milliseconds lost the offset on
/// every write (24 such nodes in the reference ELM; found 2026-10-06 when
/// `@2017-03-12T01:00:00-07:00` from CqlDateTimeOperatorsTest.cql reloaded
/// as a local time).
void main() {
  Map<String, dynamic> integer(int v) => {
        'type': 'Literal',
        'valueType': '{urn:hl7-org:elm-types:r1}Integer',
        'value': '$v',
      };

  test('an offset without milliseconds is written', () {
    final node = DateTimeExpression.fromJson({
      'type': 'DateTime',
      'year': integer(2017),
      'month': integer(3),
      'day': integer(12),
      'hour': integer(1),
      'minute': integer(0),
      'second': integer(0),
      'timezoneOffset': {
        'type': 'Literal',
        'valueType': '{urn:hl7-org:elm-types:r1}Decimal',
        'value': '-7.0',
      },
    });
    final json = node.toJson();
    expect(json.containsKey('millisecond'), isFalse);
    expect(json['timezoneOffset'], isNotNull);
  });

  test('a literal with an offset and no milliseconds reloads unchanged',
      () async {
    final literal = LiteralDateTime('2017-03-12T01:00:00-07:00');
    final once = jsonEncode(literal.toJson());
    final reloaded =
        CqlExpression.fromJson(jsonDecode(once) as Map<String, dynamic>);
    expect(jsonEncode(reloaded.toJson()), once);
    expect(await reloaded.execute({}), await literal.execute({}));
  });

  test('every reference DateTime keeps its offset after a load and write', () {
    var withOffset = 0;
    void compare(Object? ref, Object? out) {
      if (ref is Map && out is Map) {
        if (ref['type'] == 'DateTime' && ref.containsKey('timezoneOffset')) {
          withOffset++;
          expect(out.containsKey('timezoneOffset'), isTrue, reason: '$ref');
        }
        for (final k in ref.keys) {
          compare(ref[k], out[k]);
        }
      } else if (ref is List && out is List) {
        for (var i = 0; i < ref.length && i < out.length; i++) {
          compare(ref[i], out[i]);
        }
      }
    }

    for (final file in Directory('test/test/cql_to_elm_tests')
        .listSync()
        .whereType<File>()
        .where((f) => f.path.endsWith('.json'))) {
      final elm = (jsonDecode(file.readAsStringSync())
          as Map<String, dynamic>)['library'] as Map<String, dynamic>;
      compare(elm, jsonDecode(jsonEncode(CqlLibrary.fromJson(elm).toJson())));
    }
    expect(withOffset, 98);
  });
}
