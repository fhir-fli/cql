import 'qdm_5_0_draft_5_23_16.dart';

///  Data elements that meet criteria using this datatype should document
/// 				a recommendation regarding the functional status assessment indicated by the QDM
/// 				category and that its corresponding value set has been completed. 

class FunctionalStatusRecommended {
  final Interval? interval;
  final CodeableConcept? reason;
  final CodeableConcept? method;

  FunctionalStatusRecommended({
 this.interval,
 this.reason,
 this.method,
  });
}
