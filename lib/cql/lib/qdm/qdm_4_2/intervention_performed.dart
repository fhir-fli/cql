import 'package:cql/engine/types/types.dart';



/// 
/// 				Data elements that meet criteria using this
/// 				datatype should document the
/// 				completion of the intervention indicated
/// 				by the QDM category and its
/// 				corresponding value set.
/// 			

class InterventionPerformed {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralConcept? negationRationale;
  final LiteralConcept? reason;
  final dynamic result;
  final LiteralConcept? status;

  InterventionPerformed({
 this.startDatetime,
 this.stopDatetime,
 this.negationRationale,
 this.reason,
 this.result,
 this.status,
  });
}
