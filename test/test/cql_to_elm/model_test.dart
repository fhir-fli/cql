import 'package:cql/src/internal.dart';
import 'package:test/test.dart';

void main() {
  // The real FHIR 4.0.1 modelinfo (regenerated from the official HL7 XML) —
  // these tests pin the translator's type-inference data source.
  final model = Model.of(fhirmodelinfo401);

  group('Model.normalizeTypeName', () {
    test('bare names qualify to the model', () {
      expect(model.normalizeTypeName('Patient'), 'FHIR.Patient');
      expect(model.normalizeTypeName('string'), 'FHIR.string');
    });

    test('System-qualified and model-qualified names pass through', () {
      expect(model.normalizeTypeName('System.Quantity'), 'System.Quantity');
      expect(model.normalizeTypeName('FHIR.Patient'), 'FHIR.Patient');
    });

    test('ELM-namespace URIs map to System', () {
      expect(
        model.normalizeTypeName('{urn:hl7-org:elm-types:r1}Quantity'),
        'System.Quantity',
      );
    });

    test('model URIs map to the model name', () {
      expect(
        model.normalizeTypeName('{http://hl7.org/fhir}Patient'),
        'FHIR.Patient',
      );
    });

    test('nested class names are local names, not qualifiers', () {
      expect(
        model.normalizeTypeName('Account.Coverage'),
        'FHIR.Account.Coverage',
      );
    });

    test('generic syntax passes through', () {
      expect(
        model.normalizeTypeName('Interval<System.DateTime>'),
        'Interval<System.DateTime>',
      );
    });
  });

  group('Model.resolveTypeName', () {
    test('resolves bare and qualified spellings to the same ClassInfo', () {
      final bare = model.resolveTypeName('Patient');
      final qualified = model.resolveTypeName('FHIR.Patient');
      expect(bare, isA<ClassInfo>());
      expect(identical(bare, qualified), isTrue);
      expect((bare! as ClassInfo).name, 'Patient');
    });

    test('FHIR modelinfo resolution is case-insensitive', () {
      expect(model.resolveTypeName('patient'), isNotNull);
      expect(model.resolveTypeName('OBSERVATION'), isNotNull);
    });

    test('unknown types resolve to null', () {
      expect(model.resolveTypeName('NotARealType'), isNull);
      expect(model.resolveTypeName('System.Any'), isNull);
    });
  });

  group('Model.resolveElementType', () {
    test('list element: Patient.name → List<FHIR.HumanName>', () {
      final t = model.resolveElementType('Patient', 'name');
      expect(t, isNotNull);
      expect(t!.isList, isTrue);
      expect(t.isChoice, isFalse);
      expect(t.single, 'FHIR.HumanName');
    });

    test('simple element: Patient.birthDate → FHIR.date', () {
      final t = model.resolveElementType('Patient', 'birthDate');
      expect(t, isNotNull);
      expect(t!.isList, isFalse);
      expect(t.single, 'FHIR.date');
    });

    test('choice element: Observation.value → 11-way choice', () {
      final t = model.resolveElementType('Observation', 'value');
      expect(t, isNotNull);
      expect(t!.isChoice, isTrue);
      expect(t.types, hasLength(11));
      expect(t.types, contains('FHIR.Quantity'));
      expect(t.types, contains('FHIR.CodeableConcept'));
      expect(t.types, contains('FHIR.Period'));
    });

    test('inherited element resolves via baseType walk', () {
      // Observation has no `id` element itself — it comes from Resource.
      final t = model.resolveElementType('Observation', 'id');
      expect(t, isNotNull);
      expect(t!.single, 'FHIR.id');
    });

    test('nested class list: Account.coverage → List<FHIR.Account.Coverage>',
        () {
      final t = model.resolveElementType('Account', 'coverage');
      expect(t, isNotNull);
      expect(t!.isList, isTrue);
      expect(t.single, 'FHIR.Account.Coverage');
    });

    test('FHIR primitive value element maps to a System type', () {
      final t = model.resolveElementType('string', 'value');
      expect(t, isNotNull);
      expect(t!.single, 'System.String');
    });

    test('unknown element / class return null', () {
      expect(model.resolveElementType('Patient', 'notAField'), isNull);
      expect(model.resolveElementType('NotARealType', 'value'), isNull);
    });
  });

  group('Model conversions (FHIRHelpers declarations)', () {
    test('FHIR.Quantity → System.Quantity via FHIRHelpers.ToQuantity', () {
      final c = model.findConversionFrom('FHIR.Quantity');
      expect(c, isNotNull);
      expect(c!.functionName, 'FHIRHelpers.ToQuantity');
      expect(model.normalizeTypeName(c.toType!), 'System.Quantity');
    });

    test('bare-name lookup matches the same declaration', () {
      expect(
        model.findConversionFrom('Quantity'),
        same(model.findConversionFrom('FHIR.Quantity')),
      );
    });

    test('Period → Interval<System.DateTime> via FHIRHelpers.ToInterval', () {
      final c = model.findConversion('Period', 'Interval<System.DateTime>');
      expect(c, isNotNull);
      expect(c!.functionName, 'FHIRHelpers.ToInterval');
    });

    test('Coding → System.Code, CodeableConcept → System.Concept', () {
      expect(
        model.findConversionFrom('Coding')?.functionName,
        'FHIRHelpers.ToCode',
      );
      expect(
        model.findConversionFrom('CodeableConcept')?.functionName,
        'FHIRHelpers.ToConcept',
      );
    });

    test('enum code types convert to System.String', () {
      final c = model.findConversionFrom('ObservationStatus');
      expect(c, isNotNull);
      expect(c!.functionName, 'FHIRHelpers.ToString');
      expect(model.normalizeTypeName(c.toType!), 'System.String');
    });

    test('no conversion declared → empty/null', () {
      expect(model.findConversionsFrom('Patient'), isEmpty);
      expect(model.findConversionFrom('NotARealType'), isNull);
    });
  });
}
