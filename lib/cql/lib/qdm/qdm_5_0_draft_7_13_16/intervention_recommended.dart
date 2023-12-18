import 'package:cql/engine/types/types.dart';

/// Data elements that meet criteria using this datatype should document
/// a recommendation for the intervention indicated by the QDM category and its
/// corresponding value set.

class InterventionRecommended {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? reason;
  final LiteralCode? negationRationale;

  InterventionRecommended({
    this.authorDatetime,
    this.reason,
    this.negationRationale,
  });
}
