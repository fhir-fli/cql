import 'package:cql/engine/types/types.dart';

import 'qdm_5_6.dart';

///  Data elements that meet criteria using this datatype should document
/// 				the completion of the physical exam indicated by the QDM category and its
/// 				corresponding value set. Timing: The Relevant Period addresses: startTime – The time
/// 				the physical examination activity begins stopTime – The time the physical
/// 				examination activity ends 

class PhysicalExamPerformed {
  final LiteralDateTime? authorDatetime;
  final LiteralDateTime? relevantDatetime;
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralCode? reason;
  final LiteralCode? method;
  final dynamic result;
  final LiteralCode? anatomicalLocationSite;
  final LiteralCode? negationRationale;
  final Component? component;
  final QDMEntity? performer;
  final LiteralString? relatedTo;

  PhysicalExamPerformed({
 this.authorDatetime,
 this.relevantDatetime,
 this.relevantPeriod,
 this.reason,
 this.method,
 this.result,
 this.anatomicalLocationSite,
 this.negationRationale,
 this.component,
 this.performer,
 this.relatedTo,
  });
}
