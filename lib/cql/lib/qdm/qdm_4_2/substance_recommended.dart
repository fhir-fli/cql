import 'package:cql/engine/types/types.dart';



/// 
/// 				Data elements that meet criteria using this
/// 				datatype should document a
/// 				recommendation for the substance indicated
/// 				by the QDM category and
/// 				its corresponding value set.
/// 			

class SubstanceRecommended {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralConcept? negationRationale;
  final LiteralConcept? reason;
  final LiteralQuantity? dose;
  final LiteralConcept? frequency;
  final LiteralConcept? method;
  final LiteralInteger? refills;
  final LiteralConcept? route;

  SubstanceRecommended({
 this.startDatetime,
 this.stopDatetime,
 this.negationRationale,
 this.reason,
 this.dose,
 this.frequency,
 this.method,
 this.refills,
 this.route,
  });
}
