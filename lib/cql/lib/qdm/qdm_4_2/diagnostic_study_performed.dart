import 'package:cql/engine/types/types.dart';

///
/// Data elements that meet criteria using this
/// datatype should document the
/// completion of the diagnostic study
/// indicated by the QDM category and
/// its corresponding value set.
///

class DiagnosticStudyPerformed {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralConcept? negationRationale;
  final LiteralConcept? reason;
  final dynamic result;
  final LiteralConcept? status;
  final LiteralQuantity? radiationDosage;
  final LiteralQuantity? radiationDuration;
  final LiteralConcept? method;
  final LiteralConcept? facilityLocation;

  DiagnosticStudyPerformed({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
    this.result,
    this.status,
    this.radiationDosage,
    this.radiationDuration,
    this.method,
    this.facilityLocation,
  });
}