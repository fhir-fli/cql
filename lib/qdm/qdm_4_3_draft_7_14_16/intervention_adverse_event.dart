import 'package:cql/engine/types/literal_types.dart';

/// Data elements that meet criteria using this datatype should document
/// an unexpected or dangerous reaction to the intervention indicated by the QDM
/// category and its corresponding value set.

class InterventionAdverseEvent {
  final LiteralCode? reaction;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  InterventionAdverseEvent({
    this.startDatetime,
    this.stopDatetime,
    this.reaction,
  });
}
