// ignore_for_file: file_names

import 'package:fhir_primitives/fhir_primitives.dart';

final exercises05 = <String, dynamic>{
  'Patient': 'Patient(id=example)',
  'Patient Gender': 'code',
  'Patient Gender is Male': FhirBoolean(true),
  'Patient Martial Status': 'CodeableConcept',
  'Patient is Married (=)': FhirBoolean(true),
  'Patient is Married (~)': FhirBoolean(true),
  'Married in Marital Status': FhirBoolean(true),
};
