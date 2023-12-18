import 'package:cql/engine/types/types.dart';

import 'qdm_5_6.dart';

///  Data elements that meet criteria using this datatype should document
/// 				a request for the procedure indicated by the QDM category and its corresponding
/// 				value set. 

class ProcedureOrder {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? reason;
  final LiteralCode? anatomicalLocationSite;
  final LiteralInteger? rank;
  final LiteralCode? negationRationale;
  final QDMEntity? requester;
  final LiteralCode? priority;

  ProcedureOrder({
 this.authorDatetime,
 this.reason,
 this.anatomicalLocationSite,
 this.rank,
 this.negationRationale,
 this.requester,
 this.priority,
  });
}
