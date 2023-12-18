import 'package:cql/engine/types/types.dart';

import 'qdm_5_5.dart';

/// Data elements that meet criteria using this datatype should document
/// a recommendation for the substance indicated by the QDM category and its
/// corresponding value set.

class SubstanceRecommended {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? reason;
  final LiteralQuantity? dosage;
  final LiteralCode? frequency;
  final LiteralInteger? refills;
  final LiteralCode? route;
  final LiteralCode? negationRationale;
  final QDMEntity? requester;

  SubstanceRecommended({
    this.authorDatetime,
    this.reason,
    this.dosage,
    this.frequency,
    this.refills,
    this.route,
    this.negationRationale,
    this.requester,
  });
}
