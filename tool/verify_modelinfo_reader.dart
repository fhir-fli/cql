// Verifies whether StandardModelInfoReader preserves ListTypeSpecifier
// elementType when reading the OFFICIAL HL7 fhir-modelinfo-4.0.1.xml.
// Results stream incrementally to tool/verify_modelinfo_reader.out.
import 'dart:io';

import 'package:cql/src/internal.dart';

void main() {
  final out = File('tool/verify_modelinfo_reader.out').openSync(
    mode: FileMode.write,
  );
  void log(String s) {
    out
      ..writeStringSync('$s\n')
      ..flushSync();
    stdout.writeln(s);
  }

  log('reading official XML...');
  final xml = File('/tmp/official-modelinfo-4.0.1.xml').readAsStringSync();
  final reader = StandardModelInfoReader();
  final mi = reader.read(xml);
  log('parsed: name=${mi.name} version=${mi.version} '
      'typeInfo=${mi.typeInfo.length} '
      'conversionInfo=${mi.conversionInfo.length}');

  // Account.identifier: official XML has
  //   <elementTypeSpecifier elementType="FHIR.Identifier" xsi:type="ListTypeSpecifier"/>
  final account = mi.typeInfo
      .whereType<ClassInfo>()
      .where((c) => c.name == 'Account')
      .firstOrNull;
  log('Account found: ${account != null}');
  final identifier =
      account?.element?.where((e) => e.name == 'identifier').firstOrNull;
  log('Account.identifier element found: ${identifier != null}');
  log('  elementType: ${identifier?.elementType}');
  log('  type: ${identifier?.type}');
  final spec = identifier?.elementTypeSpecifier;
  log('  elementTypeSpecifier: ${spec?.runtimeType}');
  if (spec is ListTypeSpecifierModel) {
    log('  list.elementType: ${spec.elementType}');
    log('  list.elementTypeSpecifier: ${spec.elementTypeSpecifier?.toJson()}');
  } else if (spec != null) {
    log('  spec json: ${spec.toJson()}');
  }

  // Patient.name: official has the same shape with FHIR.HumanName.
  final patient = mi.typeInfo
      .whereType<ClassInfo>()
      .where((c) => c.name == 'Patient')
      .firstOrNull;
  final name = patient?.element?.where((e) => e.name == 'name').firstOrNull;
  log('Patient.name element found: ${name != null}');
  final nameSpec = name?.elementTypeSpecifier;
  if (nameSpec is ListTypeSpecifierModel) {
    log('  list.elementType: ${nameSpec.elementType}');
  } else {
    log('  spec: ${nameSpec?.toJson()}');
  }

  // Observation.value choice survives?
  final obs = mi.typeInfo
      .whereType<ClassInfo>()
      .where((c) => c.name == 'Observation')
      .firstOrNull;
  final value = obs?.element?.where((e) => e.name == 'value').firstOrNull;
  final valueSpec = value?.elementTypeSpecifier;
  log('Observation.value spec: ${valueSpec?.runtimeType}');
  if (valueSpec is ChoiceTypeSpecifierModel) {
    final choices = valueSpec.choice
        ?.map(
          (c) =>
              c is NamedTypeSpecifierModel ? c.name : c.runtimeType.toString(),
        )
        .toList();
    log('  choices: $choices');
  }

  // Conversion declarations survive?
  final toQty = mi.conversionInfo
      .where((c) => c.functionName == 'FHIRHelpers.ToQuantity')
      .firstOrNull;
  log('ToQuantity conversion: from=${toQty?.fromType} to=${toQty?.toType}');

  out.closeSync();
  log('done.');
}
