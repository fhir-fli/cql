import 'package:cql/engine/types/types.dart';

///
/// Data elements that meet criteria using this
/// datatype should document a
/// reaction in specific patients representing
/// a low threshold to the
/// normal pharmacological action of the vaccine
/// indicated by the QDM
/// category and its corresponding value set.
///

class ImmunizationIntolerance {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralConcept? reaction;

  ImmunizationIntolerance({
    this.startDatetime,
    this.stopDatetime,
    this.reaction,
  });
}
