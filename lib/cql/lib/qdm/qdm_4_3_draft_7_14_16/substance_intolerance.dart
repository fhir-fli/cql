import 'package:cql/engine/types/types.dart';

/// Data elements that meet criteria using this datatype should document
/// a reaction in specific patients representing a low threshold to the normal effects
/// of the substance indicated by the QDM category and its corresponding value set.

class SubstanceIntolerance {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralCode? reaction;

  SubstanceIntolerance({
    this.startDatetime,
    this.stopDatetime,
    this.reaction,
  });
}