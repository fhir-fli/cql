import 'package:cql/engine/types/types.dart';

/// Data elements that meet criteria using this datatype should document
/// an immunologically mediated reaction that exhibits specificity and recurrence on
/// re-exposure to the offending vaccine indicated by the QDM category and its
/// corresponding value set.

class ImmunizationAllergy {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralCode? reaction;

  ImmunizationAllergy({
    this.startDatetime,
    this.stopDatetime,
    this.reaction,
  });
}