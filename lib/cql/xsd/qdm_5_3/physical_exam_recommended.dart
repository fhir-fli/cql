import 'package:cql/engine/types/types.dart';

import 'qdm_5_3.dart';

///  Data elements that meet criteria using this datatype should document
/// 				a recommendation for the physical exam indicated by the QDM category and its
/// 				corresponding value set. 

class PhysicalExamRecommended {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? reason;
  final LiteralCode? method;
  final LiteralCode? anatomicalLocationSite;
  final LiteralCode? negationRationale;

  PhysicalExamRecommended({
 this.authorDatetime,
 this.reason,
 this.method,
 this.anatomicalLocationSite,
 this.negationRationale,
  });
}
