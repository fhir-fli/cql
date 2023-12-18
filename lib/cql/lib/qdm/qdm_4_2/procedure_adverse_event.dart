import 'package:cql/engine/types/types.dart';

///
/// Data elements that meet criteria using this
/// datatype should document an
/// unexpected or dangerous reaction to the
/// procedure indicated by the
/// QDM category and its corresponding value
/// set.
///

class ProcedureAdverseEvent {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralConcept? reaction;

  ProcedureAdverseEvent({
    this.startDatetime,
    this.stopDatetime,
    this.reaction,
  });
}
