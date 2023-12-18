import 'package:cql/engine/types/types.dart';

///
/// Data elements that meet criteria using this
/// datatype should document an
/// unexpected or dangerous reaction to the
/// substance (e.g., food,
/// environmental agent) indicated by the QDM
/// category and its
/// corresponding value set.
///

class SubstanceAdverseEvent {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralConcept? reaction;

  SubstanceAdverseEvent({
    this.startDatetime,
    this.stopDatetime,
    this.reaction,
  });
}
