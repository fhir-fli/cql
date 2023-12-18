import 'package:cql/engine/types/types.dart';

import 'qdm.dart';

class QDMBaseType {
  final CodeableConcept code;
  final LiteralDateTime startDatetime;
  final LiteralDateTime? stopDatetime;
  final CodeableConcept? negationRationale;
  final CodeableConcept? patientPreference;
  final CodeableConcept? providerPreference;

  QDMBaseType({
required this.code,
required this.startDatetime,
 this.stopDatetime,
 this.negationRationale,
 this.patientPreference,
 this.providerPreference,
  });
}
