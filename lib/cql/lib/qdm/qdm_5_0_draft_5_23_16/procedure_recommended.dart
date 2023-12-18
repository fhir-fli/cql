import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// the recommendation for the procedure indicated by the QDM category and its
/// corresponding value set.

class ProcedureRecommended {
  final Interval? interval;
  final CodeableConcept? reason;
  final CodeableConcept? method;
  final CodeableConcept? anatomicalApproachSite;
  final CodeableConcept? anatomicalLocationSite;
  final CodeableConcept? ordinality;

  ProcedureRecommended({
    this.interval,
    this.reason,
    this.method,
    this.anatomicalApproachSite,
    this.anatomicalLocationSite,
    this.ordinality,
  });
}
