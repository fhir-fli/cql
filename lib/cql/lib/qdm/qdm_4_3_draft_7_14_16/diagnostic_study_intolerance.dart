import 'package:cql/engine/types/types.dart';

/// Data elements that meet criteria using this datatype should document
/// a reaction in specific patients who have a low threshold to the normal reported or
/// expected reactions of the diagnostic study indicated by the QDM category and its
/// corresponding value set.

class DiagnosticStudyIntolerance {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralCode? reaction;
  final LiteralQuantity? radiationDosage;
  final LiteralQuantity? radiationDuration;

  DiagnosticStudyIntolerance({
    this.startDatetime,
    this.stopDatetime,
    this.reaction,
    this.radiationDosage,
    this.radiationDuration,
  });
}
