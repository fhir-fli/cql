import 'package:cql/engine/types/types.dart';

import 'qdm_5_5.dart';

/// Data elements that meet criteria using this datatype should document
/// the recommendation for the procedure indicated by the QDM category and its
/// corresponding value set.

class ProcedureRecommended {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? reason;
  final LiteralCode? anatomicalLocationSite;
  final LiteralInteger? rank;
  final LiteralCode? negationRationale;
  final QDMEntity? requester;

  ProcedureRecommended({
    this.authorDatetime,
    this.reason,
    this.anatomicalLocationSite,
    this.rank,
    this.negationRationale,
    this.requester,
  });
}
