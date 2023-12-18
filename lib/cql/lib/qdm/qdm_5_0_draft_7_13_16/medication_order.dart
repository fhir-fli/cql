import 'package:cql/engine/types/types.dart';

/// Data elements that meet criteria using this datatype should document
/// a request to a pharmacy to provide the medication indicated by the QDM category and
/// its corresponding value set.

class MedicationOrder {
  final LiteralDateTime activeDatetime;
  final LiteralDateTime authorDatetime;
  final LiteralInteger? refills;
  final LiteralQuantity? dosage;
  final LiteralQuantity? supply;
  final LiteralCode? frequency;
  final LiteralCode? route;
  final LiteralCode? method;
  final LiteralCode? reason;
  final LiteralCode? negationRationale;

  MedicationOrder({
    required this.activeDatetime,
    required this.authorDatetime,
    this.refills,
    this.dosage,
    this.supply,
    this.frequency,
    this.route,
    this.method,
    this.reason,
    this.negationRationale,
  });
}
