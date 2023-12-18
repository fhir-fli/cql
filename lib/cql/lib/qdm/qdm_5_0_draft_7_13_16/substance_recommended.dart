import 'package:cql/engine/types/types.dart';

/// Data elements that meet criteria using this datatype should document
/// a recommendation for the substance indicated by the QDM category and its
/// corresponding value set.

class SubstanceRecommended {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? reason;
  final LiteralQuantity? dosage;
  final LiteralQuantity? supply;
  final LiteralCode? frequency;
  final LiteralCode? method;
  final LiteralCode? refills;
  final LiteralCode? route;
  final LiteralCode? negationRationale;

  SubstanceRecommended({
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
