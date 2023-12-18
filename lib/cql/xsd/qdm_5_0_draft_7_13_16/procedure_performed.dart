import 'package:cql/engine/types/types.dart';



///  Data elements that meet criteria using this datatype should document
/// 				the completion of the procedure indicated by the QDM category and its corresponding
/// 				value set. Timing: The Relevant Period addresses: startTime - the time the procedure
/// 				begins; stopTime - the time the procedure is completed 

class ProcedurePerformed {
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralCode? reason;
  final LiteralCode? method;
  final dynamic result;
  final LiteralCode? status;
  final LiteralCode? anatomicalApproachSite;
  final LiteralCode? anatomicalLocationSite;
  final LiteralCode? ordinality;
  final LiteralQuantity? radiationDuration;
  final LiteralQuantity? radiationDosage;
  final LiteralDateTime? incisionDatetime;
  final LiteralCode? negationRationale;

  ProcedurePerformed({
 this.relevantPeriod,
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
 this.negationRationale,
  });
}
