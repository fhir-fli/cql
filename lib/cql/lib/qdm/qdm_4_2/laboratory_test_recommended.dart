import 'package:cql/engine/types/types.dart';

///
/// Data elements that meet criteria using this
/// datatype should document a
/// recommendation for the laboratory test
/// indicated by the QDM category
/// and its corresponding value set.
///

class LaboratoryTestRecommended {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralConcept? negationRationale;
  final LiteralConcept? method;
  final LiteralConcept? reason;

  LaboratoryTestRecommended({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.method,
    this.reason,
  });
}
