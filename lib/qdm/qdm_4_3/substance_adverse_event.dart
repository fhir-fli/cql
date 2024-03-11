import 'package:cql/engine/types/literal_types.dart';

/// Data elements that meet criteria using this datatype should document
/// an unexpected or dangerous reaction to the substance (e.g., food, environmental
/// agent) indicated by the QDM category and its corresponding value set.

class SubstanceAdverseEvent {
  final LiteralCode? reaction;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  SubstanceAdverseEvent({
    this.startDatetime,
    this.stopDatetime,
    this.reaction,
  });
}
