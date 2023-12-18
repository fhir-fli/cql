import 'package:cql/engine/types/types.dart';

import 'qdm_5_6.dart';

/// Data elements that meet criteria using this datatype should document
/// that an order for the encounter indicated by the QDM category and its corresponding
/// value set has been recommended.

class EncounterOrder {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? reason;
  final LiteralCode? facilityLocation;
  final LiteralCode? negationRationale;
  final QDMEntity? requester;
  final LiteralCode? priority;

  EncounterOrder({
    this.authorDatetime,
    this.reason,
    this.facilityLocation,
    this.negationRationale,
    this.requester,
    this.priority,
  });
}
