import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// that the encounter indicated by the QDM category and its corresponding value set has
/// been recommended.

class EncounterRecommended {
  final Interval? interval;
  final CodeableConcept? negationRationale;
  final CodeableConcept? reason;
  final CodeableConcept? facilityLocation;

  EncounterRecommended({
    this.interval,
    this.negationRationale,
    this.reason,
    this.facilityLocation,
  });
}
