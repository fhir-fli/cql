import 'package:cql/engine/types/types.dart';

///
/// Data elements that meet criteria using this
/// datatype should document a
/// request for the substance indicated by the
/// QDM category and its
/// corresponding value set.
///

class SubstanceOrder {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? reason;
  final LiteralQuantity? dosage;
  final LiteralQuantity? supply;
  final LiteralCode? frequency;
  final LiteralCode? method;
  final LiteralInteger? refills;
  final LiteralCode? route;
  final LiteralCode? negationRationale;

  SubstanceOrder({
    this.authorDatetime,
    this.reason,
    this.dosage,
    this.supply,
    this.frequency,
    this.method,
    this.refills,
    this.route,
    this.negationRationale,
  });
}
