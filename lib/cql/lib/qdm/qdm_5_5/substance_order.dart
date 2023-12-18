import 'package:cql/engine/types/types.dart';

import 'qdm_5_5.dart';

///  Data elements that meet criteria using this datatype should document
/// 				a request for the substance indicated by the QDM category and its corresponding
/// 				value set. 

class SubstanceOrder {
  final LiteralDateTime? authorDatetime;
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralCode? reason;
  final LiteralQuantity? dosage;
  final LiteralQuantity? supply;
  final LiteralCode? frequency;
  final LiteralInteger? refills;
  final LiteralCode? route;
  final LiteralCode? negationRationale;
  final QDMEntity? requester;

  SubstanceOrder({
 this.authorDatetime,
 this.relevantPeriod,
 this.reason,
 this.dosage,
 this.supply,
 this.frequency,
 this.refills,
 this.route,
 this.negationRationale,
 this.requester,
  });
}
