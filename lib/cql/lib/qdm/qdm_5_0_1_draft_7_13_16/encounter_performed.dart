import 'package:cql/engine/types/types.dart';

///
/// Data elements that meet criteria using this
/// datatype should document that the encounter indicated by the QDM
/// category and its corresponding value set has been completed.
/// Timing: The Relevant Period addresses:
/// startTime – The time the encounter began (admission time)
/// stopTime – The time the encounter ended (discharge time)
/// Timing: The Location Period addresses:
/// startTime – The time the patient arrived at the location (Facility Location Arrival time)
/// stopTime – The time the patient departed the location (Facility Location Departure time)
///

class EncounterPerformed {
  final LiteralCode admissionSource;
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralCode? dischargeDisposition;
  final LiteralCode? facilityLocation;
  final LiteralDateTimeInterval? locationPeriod;
  final LiteralCode? reason;
  final LiteralCode? diagnosis;
  final LiteralCode? principalDiagnosis;
  final LiteralCode? negationRationale;
  final LiteralQuantity? lengthOfStay;

  EncounterPerformed({
    required this.admissionSource,
    this.relevantPeriod,
    this.dischargeDisposition,
    this.facilityLocation,
    this.locationPeriod,
    this.reason,
    this.diagnosis,
    this.principalDiagnosis,
    this.negationRationale,
    this.lengthOfStay,
  });
}