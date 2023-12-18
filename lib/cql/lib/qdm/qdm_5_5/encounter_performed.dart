import 'package:cql/engine/types/types.dart';

import 'qdm_5_5.dart';

///  Data elements that meet criteria using this datatype should document
/// 				that the encounter indicated by the QDM category and its corresponding value set has
/// 				been completed. Timing: The Relevant Period addresses: startTime – The time the
/// 				encounter began (admission time) stopTime – The time the encounter ended (discharge
/// 				time) Timing: The Location Period addresses: startTime – The time the patient
/// 				arrived at the location (Facility Location Arrival time) stopTime – The time the
/// 				patient departed the location (Facility Location Departure time) 

class EncounterPerformed {
  final LiteralDateTime? authorDatetime;
  final LiteralCode admissionSource;
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralCode? dischargeDisposition;
  final DiagnosisComponent? diagnoses;
  final FacilityLocation? facilityLocation;
  final LiteralCode? negationRationale;
  final LiteralQuantity? lengthOfStay;
  final QDMEntity? participant;
  final LiteralCode? priority;

  EncounterPerformed({
 this.authorDatetime,
required this.admissionSource,
 this.relevantPeriod,
 this.dischargeDisposition,
 this.diagnoses,
 this.facilityLocation,
 this.negationRationale,
 this.lengthOfStay,
 this.participant,
 this.priority,
  });
}
