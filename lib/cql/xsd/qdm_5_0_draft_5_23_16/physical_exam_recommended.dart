import 'qdm_5_0_draft_5_23_16.dart';

///  Data elements that meet criteria using this datatype should document
/// 				a recommendation for the physical exam indicated by the QDM category and its
/// 				corresponding value set. 

class PhysicalExamRecommended {
  final Interval? interval;
  final CodeableConcept? reason;
  final CodeableConcept? method;
  final CodeableConcept? anatomicalLocationSite;

  PhysicalExamRecommended({
 this.interval,
 this.reason,
 this.method,
 this.anatomicalLocationSite,
  });
}
