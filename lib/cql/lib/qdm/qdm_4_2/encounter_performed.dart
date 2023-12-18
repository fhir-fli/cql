import 'package:cql/engine/types/types.dart';

///
/// Data elements that meet criteria using this
/// datatype should document that the encounter indicated by the QDM
/// category and its corresponding value set has been completed.
/// NOTE:
/// This datatype uses admissionDatetime and dischargeDatetime rather
/// than startDatetime and stopDatetime, respectively.
///

class EncounterPerformed {
  final LiteralDateTime admissionDatetime;
  final LiteralDateTime dischargeDatetime;
  final LiteralQuantity? lengthOfStay;
  final LiteralConcept? dischargeStatus;
  final LiteralConcept? facilityLocation;
  final LiteralDateTime? facilityLocationArrivalDatetime;
  final LiteralDateTime? facilityLocationDepartureDatetime;
  final LiteralConcept? reason;
  final LiteralConcept? diagnosis;
  final LiteralConcept? principalDiagnosis;
  final LiteralConcept? negationRationale;

  EncounterPerformed({
    required this.admissionDatetime,
    required this.dischargeDatetime,
    this.lengthOfStay,
    this.dischargeStatus,
    this.facilityLocation,
    this.facilityLocationArrivalDatetime,
    this.facilityLocationDepartureDatetime,
    this.reason,
    this.diagnosis,
    this.principalDiagnosis,
    this.negationRationale,
  });
}
