import 'package:cql/engine/types/types.dart';

///
/// Data elements that meet criteria using this
/// datatype should document
/// that the encounter indicated by the QDM
/// category and its
/// corresponding value set has been recommended.
///

class EncounterRecommended {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralConcept? negationRationale;
  final LiteralConcept? reason;
  final LiteralConcept? facilityLocation;

  EncounterRecommended({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
    this.facilityLocation,
  });
}