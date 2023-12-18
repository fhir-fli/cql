import 'package:cql/engine/types/types.dart';



/// 
/// 				Data elements that meet criteria using this
/// 				datatype should document the
/// 				completion of the procedure indicated by
/// 				the QDM category and its
/// 				corresponding value set.
/// 			

class ProcedurePerformed {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralConcept? negationRationale;
  final LiteralConcept? reason;
  final LiteralConcept? method;
  final dynamic result;
  final LiteralConcept? status;
  final LiteralConcept? anatomicalApproachSite;
  final LiteralConcept? anatomicalLocationSite;
  final LiteralConcept? ordinality;
  final LiteralQuantity? radiationDuration;
  final LiteralQuantity? radiationDosage;
  final LiteralDateTime? incisionDatetime;

  ProcedurePerformed({
 this.startDatetime,
 this.stopDatetime,
 this.negationRationale,
 this.reason,
 this.method,
 this.result,
 this.status,
 this.anatomicalApproachSite,
 this.anatomicalLocationSite,
 this.ordinality,
 this.radiationDuration,
 this.radiationDosage,
 this.incisionDatetime,
  });
}
