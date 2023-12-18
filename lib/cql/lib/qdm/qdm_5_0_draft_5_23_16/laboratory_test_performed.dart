import 'qdm_5_0_draft_5_23_16.dart';

///  Data elements that meet criteria using this datatype should document
/// 				the laboratory test indicated by the QDM category and its corresponding value set
/// 				was performed. 

class LaboratoryTestPerformed {
  final Interval? interval;
  final CodeableConcept? status;
  final CodeableConcept? method;
  final CodeableConcept? result;
  final CodeableConcept? reason;
  final CodeableConcept? referenceRangeHigh;
  final CodeableConcept? referenceRangeLow;

  LaboratoryTestPerformed({
 this.interval,
 this.status,
 this.method,
 this.result,
 this.reason,
 this.referenceRangeHigh,
 this.referenceRangeLow,
  });
}
