import 'package:cql/engine/types/types.dart';

import 'qdm_5_6.dart';

///  Data elements that meet criteria using this datatype should document
/// 				the completion of the procedure indicated by the QDM category and its corresponding
/// 				value set. Timing: The Relevant Period addresses: startTime - the time the procedure
/// 				begins; stopTime - the time the procedure is completed 

class ProcedurePerformed {
  final LiteralDateTime? authorDatetime;
  final LiteralDateTime? relevantDatetime;
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralCode? reason;
  final LiteralCode? method;
  final dynamic result;
  final LiteralCode? status;
  final LiteralCode? anatomicalLocationSite;
  final LiteralInteger? rank;
  final LiteralDateTime? incisionDatetime;
  final LiteralCode? negationRationale;
  final Component? component;
  final QDMEntity? performer;
  final LiteralString? relatedTo;

  ProcedurePerformed({
 this.authorDatetime,
 this.relevantDatetime,
 this.relevantPeriod,
 this.reason,
 this.method,
 this.result,
 this.status,
 this.anatomicalLocationSite,
 this.rank,
 this.incisionDatetime,
 this.negationRationale,
 this.component,
 this.performer,
 this.relatedTo,
  });
}
