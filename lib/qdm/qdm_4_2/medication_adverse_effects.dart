import 'package:cql/engine/types/literal_types.dart';

///
/// Data elements that meet criteria using this
/// datatype should document an
/// unexpected or dangerous reaction to the
/// medication indicated by the
/// QDM category and its corresponding value
/// set.
///

class MedicationAdverseEffects {
  final LiteralConcept? reaction;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  MedicationAdverseEffects({
    this.startDatetime,
    this.stopDatetime,
    this.reaction,
  });
}
