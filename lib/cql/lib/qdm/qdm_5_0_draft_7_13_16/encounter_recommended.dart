import 'package:cql/engine/types/types.dart';

/// Data elements that meet criteria using this datatype should document
/// that the encounter indicated by the QDM category and its corresponding value set has
/// been recommended.

class EncounterRecommended {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? reason;
  final LiteralCode? facilityLocation;
  final LiteralCode? negationRationale;

  EncounterRecommended({
    this.authorDatetime,
    this.reason,
    this.facilityLocation,
    this.negationRationale,
  });
}
