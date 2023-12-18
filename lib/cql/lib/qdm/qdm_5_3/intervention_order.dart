import 'package:cql/engine/types/types.dart';

///  Data elements that meet criteria using this datatype should document
/// 				a request to perform the intervention indicated by the QDM category and its
/// 				corresponding value set.

class InterventionOrder {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? reason;
  final LiteralCode? negationRationale;

  InterventionOrder({
    this.authorDatetime,
    this.reason,
    this.negationRationale,
  });
}
