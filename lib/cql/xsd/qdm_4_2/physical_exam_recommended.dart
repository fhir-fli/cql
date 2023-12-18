import 'package:cql/engine/types/types.dart';



/// 
/// 				Data elements that meet criteria using this
/// 				datatype should document a
/// 				recommendation for the physical exam
/// 				indicated by the QDM category
/// 				and its corresponding value set.
/// 			

class PhysicalExamRecommended {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralConcept? negationRationale;
  final LiteralConcept? reason;
  final LiteralConcept? method;
  final LiteralConcept? anatomicalLocationSite;

  PhysicalExamRecommended({
 this.startDatetime,
 this.stopDatetime,
 this.negationRationale,
 this.reason,
 this.method,
 this.anatomicalLocationSite,
  });
}
