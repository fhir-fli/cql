import 'package:cql/engine/types/types.dart';

/// Data elements that meet criteria using this datatype should document
/// a request for the procedure indicated by the QDM category and its corresponding
/// value set.

class ProcedureOrder {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? reason;
  final LiteralCode? anatomicalLocationSite;
  final LiteralCode? ordinality;
  final LiteralCode? negationRationale;

  ProcedureOrder({
    this.authorDatetime,
    this.reason,
    this.anatomicalLocationSite,
    this.ordinality,
    this.negationRationale,
  });
}
