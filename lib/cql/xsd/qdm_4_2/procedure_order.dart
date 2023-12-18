import 'package:cql/engine/types/types.dart';



/// 
/// 				Data elements that meet criteria using this
/// 				datatype should document a
/// 				request for the procedure indicated by the
/// 				QDM category and its
/// 				corresponding value set.
/// 				NOTE: The start and stop
/// 				datetime of Device, Order reflects the “author time” of the record
/// 				in the Quality Reporting Document Architecture (QRDA). This
/// 				corresponds to when the order was signed.
/// 			

class ProcedureOrder {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralConcept? negationRationale;
  final LiteralConcept? reason;
  final LiteralConcept? method;
  final LiteralConcept? anatomicalApproachSite;
  final LiteralConcept? anatomicalLocationSite;
  final LiteralConcept? ordinality;
  final LiteralQuantity? radiationDuration;

  ProcedureOrder({
 this.startDatetime,
 this.stopDatetime,
 this.negationRationale,
 this.reason,
 this.method,
 this.anatomicalApproachSite,
 this.anatomicalLocationSite,
 this.ordinality,
 this.radiationDuration,
  });
}
