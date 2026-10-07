import 'dart:convert';

import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

/// Readers accept what the ELM schema lets a producer omit, and writers
/// write what readers read. Each case names the schema line it follows
/// (https://cql.hl7.org/elm/schema/expression.xsd and
/// clinicalexpression.xsd, read 2026-10-06). All were defects found by a
/// census of every `json['x'] as T` cast against the schema.
Map<String, dynamic> lit(String type, String value) => {
      'type': 'Literal',
      'valueType': '{urn:hl7-org:elm-types:r1}$type',
      'value': value,
    };

void main() {
  group('schema-optional fields a reader cast as required', () {
    test('AggregateClause.distinct: optional, default false', () {
      // expression.xsd AggregateClause: use="optional" default="false".
      final clause = AggregateClause.fromJson({
        'identifier': 'Result',
        'expression': lit('Integer', '1'),
      });
      expect(clause.distinct, isFalse);
    });

    test('Convert: toType alone, or toTypeSpecifier alone', () {
      // expression.xsd Convert: toTypeSpecifier minOccurs=0, toType optional.
      final byName = CqlExpression.fromJson({
        'type': 'Convert',
        'toType': '{urn:hl7-org:elm-types:r1}String',
        'operand': lit('Integer', '5'),
      }) as Convert;
      expect(byName.toType?.localPart, 'String');
      expect(byName.toTypeSpecifier, isNull);
      final bySpecifier = CqlExpression.fromJson({
        'type': 'Convert',
        'toTypeSpecifier': {
          'type': 'NamedTypeSpecifier',
          'name': '{urn:hl7-org:elm-types:r1}String',
        },
        'operand': lit('Integer', '5'),
      }) as Convert;
      expect(bySpecifier.toType, isNull);
      expect(bySpecifier.toTypeSpecifier, isNotNull);
    });

    test('Split without a separator', () async {
      // expression.xsd Split: separator minOccurs=0.
      final split = CqlExpression.fromJson({
        'type': 'Split',
        'stringToSplit': lit('String', 'a,b'),
      }) as Split;
      expect(split.separator, isNull);
      expect(await split.execute({}), [CqlString('a,b')]);
      expect(split.toJson().containsKey('separator'), isFalse);
    });

    test('Aggregate without an initialValue', () {
      // expression.xsd Aggregate: initialValue minOccurs=0.
      final aggregate = CqlExpression.fromJson({
        'type': 'Aggregate',
        'iteration': lit('Integer', '1'),
        'source': {
          'type': 'List',
          'element': [lit('Integer', '1')],
        },
      }) as Aggregate;
      expect(aggregate.initialValue, isNull);
    });

    test('Concept without codes', () {
      // clinicalexpression.xsd Concept: code minOccurs=0.
      final concept = CqlExpression.fromJson({'type': 'Concept'}) as Concept;
      expect(concept.code, isEmpty);
    });

    test("Quantity without a unit is the default unit '1'", () {
      // clinicalexpression.xsd Quantity: unit optional. CQL reference 09-b,
      // Quantity: "When a quantity has no units specified, it is treated as
      // a quantity with the default unit ('1')."
      final quantity =
          CqlExpression.fromJson({'type': 'Quantity', 'value': 5}) as Quantity;
      expect(quantity.unit, '1');
    });

    test('n-ary operators with no operand', () {
      // expression.xsd NaryExpression: operand minOccurs=0.
      for (final type in ['Coalesce', 'Concatenate', 'Except', 'Intersect']) {
        final node = CqlExpression.fromJson({'type': type});
        expect(node.type, type, reason: type);
      }
    });
  });

  group('type names a class writes that a reader must dispatch', () {
    test('OnOrAfter, Skip, Take and Time at the top level', () {
      final onOrAfter = CqlExpression.fromJson({
        'type': 'OnOrAfter',
        'operand': [lit('Integer', '2'), lit('Integer', '1')],
      });
      expect(onOrAfter, isA<OnOrAfter>());
      // Skip and Take are this engine's own nodes (ELM has neither; CQL
      // translates both to Slice), binary over [source, count].
      final skip = CqlExpression.fromJson({
        'type': 'Skip',
        'operand': [
          {
            'type': 'List',
            'element': [lit('Integer', '1')],
          },
          lit('Integer', '1'),
        ],
      });
      // `Skip` is also a FHIRPath name in this package, so by type string.
      expect(skip.type, 'Skip');
      expect(skip.runtimeType.toString(), 'Skip');
      final take = CqlExpression.fromJson({
        'type': 'Take',
        'operand': [
          {
            'type': 'List',
            'element': [lit('Integer', '1')],
          },
          lit('Integer', '1'),
        ],
      });
      expect(take, isA<Take>());
      final time = CqlExpression.fromJson({
        'type': 'Time',
        'hour': lit('Integer', '15'),
      });
      expect(time, isA<TimeExpression>());
      expect((time.toJson() as Map<String, dynamic>)['type'], 'Time');
    });

    test("OperatorExpression.fromJson reads 'Concatenate' spelt correctly", () {
      final node = OperatorExpression.fromJson({
        'type': 'Concatenate',
        'operand': [lit('String', 'a'), lit('String', 'b')],
      });
      expect(node, isA<Concatenate>());
    });

    test('every class whose type the top-level reader dispatches writes it',
        () {
      // One probe per class the translator builds for an ELM operator the
      // reader lacked (OnOrAfter, Skip, Take, Time): the written `type`
      // reloads to the same class.
      for (final node in <CqlExpression>[
        OnOrAfter(operand: [LiteralInteger(2), LiteralInteger(1)]),
        TimeExpression(hour: LiteralInteger(15)),
      ]) {
        final json = jsonDecode(jsonEncode(node.toJson()));
        expect(
          CqlExpression.fromJson(json as Map<String, dynamic>).runtimeType,
          node.runtimeType,
        );
      }
    });
  });

  group('writers that dropped or broke a value', () {
    test('a DateTime literal keeps its offset', () async {
      // expression.xsd DateTime: timezoneOffset minOccurs=0; the reference
      // translator writes @...Z as the Decimal literal 0.0.
      for (final text in [
        '2013-01-02T00:00:00.000Z',
        '2013-01-02T10:00:00+02:00',
        '2013-01-02T10:00:00-05:30',
        '2013-01-02T10:00',
      ]) {
        final literal = LiteralDateTime(text);
        final json = literal.toJson();
        final reloaded = CqlExpression.fromJson(
          jsonDecode(jsonEncode(json)) as Map<String, dynamic>,
        );
        final original = await literal.execute({});
        final back = await reloaded.execute({}) as CqlDateTime;
        expect(back, original, reason: text);
        expect(
          json.containsKey('timezoneOffset'),
          text.endsWith('Z') || text.contains('+') || text.contains('-05'),
          reason: text,
        );
      }
      final utcOffset = LiteralDateTime('2013-01-02T00:00:00.000Z')
          .toJson()['timezoneOffset'] as Map<String, dynamic>;
      expect(utcOffset['value'], '0.0');
    });

    test('a Decimal literal is written as its source text', () {
      // CqlArithmeticFunctionsTest.cql line with 37 significant digits:
      // toStringAsPrecision accepts at most 21 and threw a RangeError.
      const text = '10000000000000000000000000000.00000000';
      expect(LiteralDecimal.fromString(text).toJson()['value'], text);
      expect(LiteralDecimal.fromJson(text).toJson()['value'], text);
      expect(
        LiteralDecimal.fromJson(lit('Decimal', text)).toJson()['value'],
        text,
      );
      expect(LiteralDecimal.fromString('1.50').toJson()['value'], '1.50');
      expect(LiteralDecimal(1.5).toJson()['value'], '1.5');
    });

    test('an interval literal writes the ELM Interval shape', () async {
      // expression.xsd Interval: low/high Expression, lowClosed/highClosed
      // xs:boolean. The literal wrote no type and Literal objects for the
      // closures, so nothing could read it back.
      final literal = LiteralIntegerInterval(
        low: LiteralInteger(1),
        high: LiteralInteger(5),
        lowClosed: LiteralBoolean(true),
        highClosed: LiteralBoolean(false),
      );
      final json = literal.toJson();
      expect(json['type'], 'Interval');
      expect(json['lowClosed'], true);
      expect(json['highClosed'], false);
      final reloaded = CqlExpression.fromJson(
        jsonDecode(jsonEncode(json)) as Map<String, dynamic>,
      );
      expect(reloaded, isA<IntervalExpression>());
      expect(await reloaded.execute({}), await literal.execute({}));
    });
  });
}
