import 'qdm.dart';

class DiagnosisActive {
  final CodeableConcept? anatomicalLocation;
  final CodeableConcept? laterality;
  final CodeableConcept? severity;
  final CodeableConcept? ordinality;

  DiagnosisActive({
 this.anatomicalLocation,
 this.laterality,
 this.severity,
 this.ordinality,
  });
}
