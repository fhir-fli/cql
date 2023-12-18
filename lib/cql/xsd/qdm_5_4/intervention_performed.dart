import 'package:cql/engine/types/types.dart';

import 'qdm_5_4.dart';

///  Data elements that meet criteria using this datatype should document
/// 				the completion of the intervention indicated by the QDM category and its
/// 				corresponding value set. Timing: The Relevant Period addresses: startTime – The time
/// 				the intervention begins stopTime – The time the intervention ends 

class InterventionPerformed {
  final LiteralDateTime? authorDatetime;
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralCode? reason;
  final dynamic result;
  final LiteralCode? status;
  final LiteralCode? negationRationale;

  InterventionPerformed({
 this.authorDatetime,
 this.relevantPeriod,
 this.reason,
 this.result,
 this.status,
 this.negationRationale,
  });
}
