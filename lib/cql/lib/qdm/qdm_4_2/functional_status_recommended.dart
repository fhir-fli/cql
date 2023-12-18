import 'package:cql/engine/types/types.dart';

///
/// Data elements that meet criteria using this
/// datatype should document a
/// recommendation regarding the functional
/// status assessment indicated
/// by the QDM category and that its
/// corresponding value set has been
/// completed.
///

class FunctionalStatusRecommended {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralConcept? negationRationale;
  final LiteralConcept? reason;
  final LiteralConcept? method;

  FunctionalStatusRecommended({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
    this.method,
  });
}
