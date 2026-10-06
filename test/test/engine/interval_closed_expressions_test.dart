import 'dart:convert';

import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// expression.xsd Interval: `lowClosedExpression` and `highClosedExpression`
/// are optional elements giving the closed indicators as expressions. The
/// reader dropped both until 2026-10-06.
void main() {
  Map<String, dynamic> lit(String type, String value) => {
        'type': 'Literal',
        'valueType': '{urn:hl7-org:elm-types:r1}$type',
        'value': value,
      };

  final json = <String, dynamic>{
    'type': 'Interval',
    'low': lit('Integer', '1'),
    'lowClosedExpression': lit('Boolean', 'false'),
    'high': lit('Integer', '10'),
    'highClosedExpression': lit('Boolean', 'true'),
    'lowClosed': true,
    'highClosed': false,
  };

  test('both elements are read and written', () {
    final node = CqlExpression.fromJson(json) as IntervalExpression;
    expect(node.lowClosedExpression, isNotNull);
    expect(node.highClosedExpression, isNotNull);
    final out = node.toJson();
    expect(out['lowClosedExpression'], lit('Boolean', 'false'));
    expect(out['highClosedExpression'], lit('Boolean', 'true'));
    final again = CqlExpression.fromJson(
      jsonDecode(jsonEncode(out)) as Map<String, dynamic>,
    ).toJson();
    expect(jsonEncode(again), jsonEncode(out));
  });

  test('the expression value is the closed indicator', () async {
    final interval =
        await CqlExpression.fromJson(json).execute({}) as CqlInterval<dynamic>;
    expect(interval.lowClosed, isFalse);
    expect(interval.highClosed, isTrue);
  });

  test('without the elements the attributes decide, default closed', () async {
    final interval = await CqlExpression.fromJson({
      'type': 'Interval',
      'low': lit('Integer', '1'),
      'high': lit('Integer', '10'),
      'highClosed': false,
    }).execute({}) as CqlInterval<dynamic>;
    expect(interval.lowClosed, isTrue);
    expect(interval.highClosed, isFalse);
  });
}
