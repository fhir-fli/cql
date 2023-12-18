import 'package:cql/engine/types/types.dart';

/// Data elements that meet criteria using this datatype should document
/// a recommendation for the laboratory test indicated by the QDM category and its
/// corresponding value set.

class LaboratoryTestRecommended {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? reason;
  final LiteralCode? negationRationale;

  LaboratoryTestRecommended({
    this.authorDatetime,
    this.reason,
    this.negationRationale,
  });
}
