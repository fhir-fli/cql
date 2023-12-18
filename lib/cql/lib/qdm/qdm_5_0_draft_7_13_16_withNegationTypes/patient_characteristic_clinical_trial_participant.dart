import 'package:cql/engine/types/types.dart';

/// Data elements that meet criteria using this datatype should document
/// that the patient is a clinical trial participant for the clinical trial indicated by
/// the QDM category and its corresponding value set. Timing: The Relevant Period
/// addresses: startTime – The time the clinical trial began stopTime – The time the
/// clinical trial ended

class PatientCharacteristicClinicalTrialParticipant {
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralCode? reason;

  PatientCharacteristicClinicalTrialParticipant({
    this.relevantPeriod,
    this.reason,
  });
}
