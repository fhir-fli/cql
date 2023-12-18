import 'package:cql/engine/types/types.dart';

import 'qdm_5_6.dart';

/// Data elements that meet criteria using this datatype should document
/// a request to perform the intervention indicated by the QDM category and its
/// corresponding value set.

class InterventionOrder {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? reason;
  final LiteralCode? negationRationale;
  final QDMEntity? requester;

  InterventionOrder({
    this.authorDatetime,
    this.reason,
    this.negationRationale,
    this.requester,
  });
}
