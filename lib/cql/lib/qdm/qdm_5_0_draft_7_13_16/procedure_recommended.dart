import 'package:cql/engine/types/types.dart';



///  Data elements that meet criteria using this datatype should document
/// 				the recommendation for the procedure indicated by the QDM category and its
/// 				corresponding value set. 

class ProcedureRecommended {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? reason;
  final LiteralCode? method;
  final LiteralCode? anatomicalApproachSite;
  final LiteralCode? anatomicalLocationSite;
  final LiteralCode? ordinality;
  final LiteralCode? negationRationale;

  ProcedureRecommended({
 this.authorDatetime,
 this.reason,
 this.method,
 this.anatomicalApproachSite,
 this.anatomicalLocationSite,
 this.ordinality,
 this.negationRationale,
  });
}
