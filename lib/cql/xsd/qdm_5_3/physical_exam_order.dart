import 'package:cql/engine/types/types.dart';

import 'qdm_5_3.dart';

///  Data elements that meet criteria using this datatype should document
/// 				a request for the physical exam indicated by the QDM category and its corresponding
/// 				value set. The datatype is expected to be used to identify orders such as "vital
/// 				signs, frequency every x hours,” or "pedal pulse check, frequency every 15 minutes
/// 				for x hours." 

class PhysicalExamOrder {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? reason;
  final LiteralCode? method;
  final LiteralCode? anatomicalLocationSite;
  final LiteralCode? negationRationale;

  PhysicalExamOrder({
 this.authorDatetime,
 this.reason,
 this.method,
 this.anatomicalLocationSite,
 this.negationRationale,
  });
}
