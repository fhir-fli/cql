import 'package:cql/engine/types/types.dart';

import 'qdm_5_5.dart';

///  Data elements that meet criteria using this datatype should document
/// 				a request to a pharmacy to provide the medication indicated by the QDM category and
/// 				its corresponding value set. 

class MedicationOrder {
  final LiteralDateTime authorDatetime;
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralInteger? refills;
  final LiteralQuantity? dosage;
  final LiteralQuantity? supply;
  final LiteralCode? frequency;
  final LiteralInteger? daysSupplied;
  final LiteralCode? route;
  final LiteralCode? setting;
  final LiteralCode? reason;
  final QDMEntity? prescriber;
  final LiteralCode? negationRationale;

  MedicationOrder({
required this.authorDatetime,
 this.relevantPeriod,
 this.refills,
 this.dosage,
 this.supply,
 this.frequency,
 this.daysSupplied,
 this.route,
 this.setting,
 this.reason,
 this.prescriber,
 this.negationRationale,
  });
}
