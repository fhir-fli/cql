import 'package:cql/engine/types/types.dart';



/// 
/// 				Data elements that meet criteria using this
/// 				datatype should document the
/// 				recommendation for the procedure
/// 				indicated by the QDM category and
/// 				its corresponding value set.
/// 			

class ProcedureRecommended {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralConcept? negationRationale;
  final LiteralConcept? reason;
  final LiteralConcept? method;
  final LiteralConcept? anatomicalApproachSite;
  final LiteralConcept? anatomicalLocationSite;
  final LiteralConcept? ordinality;

  ProcedureRecommended({
 this.startDatetime,
 this.stopDatetime,
 this.negationRationale,
 this.reason,
 this.method,
 this.anatomicalApproachSite,
 this.anatomicalLocationSite,
 this.ordinality,
  });
}
