import 'package:cql/engine/types/types.dart';

import 'qdm_5_5.dart';

/// Data elements that meet criteria using this datatype should document
/// a request for the laboratory test indicated by the QDM category and its
/// corresponding value set.

class LaboratoryTestOrder {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? reason;
  final LiteralCode? negationRationale;
  final QDMEntity? requester;

  LaboratoryTestOrder({
    this.authorDatetime,
    this.reason,
    this.negationRationale,
    this.requester,
  });
}
