import 'package:cql/engine/types/types.dart';

import 'qdm_5_6.dart';

///  To meet criteria using this datatype, the communication indicated by
/// 				the Communication QDM category is a conveyance of information from one entity (e.g.,
/// 				person, organization, or device) to another. 

class CommunicationPerformed {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? category;
  final LiteralCode? medium;
  final QDMEntity? sender;
  final QDMEntity? recipient;
  final LiteralDateTime? sentDatetime;
  final LiteralDateTime? receivedDatetime;
  final LiteralCode? negationRationale;
  final LiteralString? relatedTo;

  CommunicationPerformed({
 this.authorDatetime,
 this.category,
 this.medium,
 this.sender,
 this.recipient,
 this.sentDatetime,
 this.receivedDatetime,
 this.negationRationale,
 this.relatedTo,
  });
}
