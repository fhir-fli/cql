import 'package:cql/data_types/clinical.dart';
import 'package:test/test.dart';

void main() {
  group('CqlCode', () {
    late CqlCode code, codeNoVersion, codeNoCqlCodesystem;
    setUp(() {
      code = CqlCode('ABC', '5.4.3.2.1', '1');
      codeNoVersion = CqlCode('ABC', '5.4.3.2.1');
      codeNoCqlCodesystem = CqlCode('ABC');
    });

    test('should properly represent the code, system, and version', () {
      expect(code.code, equals('ABC'));
      expect(code.system, equals('5.4.3.2.1'));
      expect(code.version, equals('1'));
    });

    test('should match code by CqlCode object', () {
      expect(code.hasMatch(CqlCode('ABC', '5.4.3.2.1', '1')), isTrue);
    });

    test('should match code by CqlConcept object', () {
      expect(
        code.hasMatch(CqlConcept([
          CqlCode('ABC', '5.4.3.2.1', '2'),
          CqlCode('ABC', '5.4.3.2.1', '1'),
        ])),
        isTrue,
      );
    });

    test('should match code by array of CqlCode objects', () {
      expect(code.hasMatch([CqlCode('ABC', '5.4.3.2.1', '1')]), isTrue);
    });

    test('should match code by array of CqlConcept objects', () {
      expect(
        code.hasMatch([
          CqlConcept([
            CqlCode('ABC', '5.4.3.2.1', '2'),
            CqlCode('ABC', '5.4.3.2.1', '1'),
          ])
        ]),
        isTrue,
      );
    });

    test('should match code with different version', () {
      expect(code.hasMatch(CqlCode('ABC', '5.4.3.2.1', '3')), isTrue);
    });

    test('should match code with no version', () {
      expect(code.hasMatch(CqlCode('ABC', '5.4.3.2.1')), isTrue);
    });

    test('should match code with version if does not have version', () {
      expect(codeNoVersion.hasMatch(CqlCode('ABC', '5.4.3.2.1', '3')), isTrue);
    });

    test('should match code with no version if does not have version', () {
      expect(codeNoVersion.hasMatch(CqlCode('ABC', '5.4.3.2.1')), isTrue);
    });

    test('should not match code with different code system', () {
      expect(code.hasMatch(CqlCode('ABC', '5.4.3.2.2')), isFalse);
    });

    test('should not match code with no code system', () {
      expect(code.hasMatch(CqlCode('ABC')), isFalse);
    });

    test('should not match code with code system if does not have code system',
        () {
      expect(
          codeNoCqlCodesystem.hasMatch(CqlCode('ABC', '5.4.3.2.1')), isFalse);
    });

    test('should match code with no code system if does not have code system',
        () {
      expect(codeNoCqlCodesystem.hasMatch(CqlCode('ABC')), isTrue);
    });

    test(
        'should not match different code with no code system if does not have code system',
        () {
      expect(codeNoCqlCodesystem.hasMatch(CqlCode('CBA')), isFalse);
    });

    test('should match code with CqlConcept object with different versions',
        () {
      expect(
        code.hasMatch(CqlConcept([
          CqlCode('ABC', '5.4.3.2.1', '9'),
          CqlCode('ABC', '5.4.3.2.1', '8'),
        ])),
        isTrue,
      );
    });
  });

  group('CqlCqlConcept', () {
    late CqlConcept concept;

    setUp(() {
      concept = CqlConcept(
          [CqlCode('ABC', '5.4.3.2.1', '1'), CqlCode('ABC', '5.4.3.2.1', '2')]);
    });

    test('should match concept by Code object', () {
      expect(concept.hasMatch(CqlCode('ABC', '5.4.3.2.1', '1')), isTrue);
    });

    test('should match concept by CqlConcept object', () {
      expect(
        concept.hasMatch(CqlConcept([
          CqlCode('ABC', '5.4.3.2.1', '2'),
          CqlCode('DEF', '5.4.3.2.1', '3')
        ])),
        isTrue,
      );
    });

    test('should match concept by array of Code objects', () {
      expect(concept.hasMatch([CqlCode('ABC', '5.4.3.2.1', '1')]), isTrue);
    });

    test('should match concept by array of CqlConcept objects', () {
      expect(
        concept.hasMatch([
          CqlConcept([
            CqlCode('ABC', '5.4.3.2.1', '2'),
            CqlCode('DEF', '5.4.3.2.1', '3')
          ])
        ]),
        isTrue,
      );
    });

    test('should match concept with Code object with different version', () {
      expect(concept.hasMatch(CqlCode('ABC', '5.4.3.2.1', '3')), isTrue);
    });

    test('should match CqlConcept object with different versions', () {
      expect(
        concept.hasMatch(CqlConcept([
          CqlCode('ABC', '5.4.3.2.1', '9'),
          CqlCode('ABC', '5.4.3.2.1', '8')
        ])),
        isTrue,
      );
    });
  });

  group('CqlValueSet', () {
    late CqlValueSet valueSet;

    setUp(() {
      valueSet = CqlValueSet('1.2.3.4.5', '1', [
        CqlCode('ABC', '5.4.3.2.1', '1'),
        CqlCode('DEF', '5.4.3.2.1', '2'),
        CqlCode('GHI', '5.4.3.4.5', '3')
      ]);
    });

    test('should properly represent the OID, version, and codes', () {
      expect(valueSet.oid, '1.2.3.4.5');
      expect(valueSet.version, '1');
      expect(valueSet.codes.length, 3);
      expect(valueSet.codes[0], equals(CqlCode('ABC', '5.4.3.2.1', '1')));
      expect(valueSet.codes[1], equals(CqlCode('DEF', '5.4.3.2.1', '2')));
      expect(valueSet.codes[2], equals(CqlCode('GHI', '5.4.3.4.5', '3')));
    });

    test('should match code by Code object', () {
      expect(valueSet.hasMatch(CqlCode('DEF', '5.4.3.2.1', '2')), isTrue);
    });

    test('should match code by Concept object', () {
      expect(
        valueSet.hasMatch(
          CqlConcept([
            CqlCode('DEF', '5.4.3.2.1', '1'),
            CqlCode('DEF', '5.4.3.2.1', '2')
          ]),
        ),
        isTrue,
      );
    });

    test('should match code by array of Code objects', () {
      expect(valueSet.hasMatch([CqlCode('DEF', '5.4.3.2.1', '2')]), isTrue);
    });

    test('should match code by array of Concept objects', () {
      expect(
        valueSet.hasMatch([
          CqlConcept([
            CqlCode('DEF', '5.4.3.2.1', '1'),
            CqlCode('DEF', '5.4.3.2.1', '2'),
          ]),
        ]),
        isTrue,
      );
    });

    test('should match code with different version', () {
      expect(valueSet.hasMatch(CqlCode('DEF', '5.4.3.2.1', '3')), isTrue);
    });

    test('should match Concept with different code versions', () {
      expect(
        valueSet.hasMatch(
          CqlConcept([
            CqlCode('DEF', '5.4.3.2.1', '9'),
            CqlCode('DEF', '5.4.3.2.1', '9'),
          ]),
        ),
        isTrue,
      );
    });
  });
}
