import 'package:cql/engine/types/types.dart';

import 'qdm_5_4.dart';

/// To meet criteria using this datatype, the communication indicated by
/// the Communication QDM category is a conveyance of information from one entity (e.g.,
/// person, organization, or device) to another.

class CommunicationPerformed {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? category;
  final LiteralCode? medium;
  final LiteralCode? sender;
  final LiteralCode? recipient;
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralCode? negationRationale;
  final Id? relatedTo;

  CommunicationPerformed({
    this.authorDatetime,
    this.category,
    this.medium,
    this.sender,
    this.recipient,
    this.relevantPeriod,
    this.negationRationale,
    this.relatedTo,
  });
}