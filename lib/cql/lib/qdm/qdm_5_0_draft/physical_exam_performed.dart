import 'qdm_5_0_draft.dart';

/// Data elements that meet criteria using this datatype should document
/// the completion of the physical exam indicated by the QDM category and its
/// corresponding value set.

class PhysicalExamPerformed {
  final Interval? interval;
  final CodeableConcept? negationRationale;
  final CodeableConcept? reason;
  final CodeableConcept? method;
  final CodeableConcept? result;
  final CodeableConcept? anatomicalLocationSite;

  PhysicalExamPerformed({
    this.interval,
    this.negationRationale,
    this.reason,
    this.method,
    this.result,
    this.anatomicalLocationSite,
  });
}
