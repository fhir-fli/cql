import 'package:cql/engine/types/types.dart';



/// 
/// 				Data elements that meet criteria using this
/// 				datatype should document the
/// 				use of tools and calculators (indicated
/// 				by the QDM category and its
/// 				corresponding value set) that suggest
/// 				vulnerabilities for any given
/// 				patient. This datatype should be used
/// 				with the QDM Attribute result
/// 				to specify criteria related to the
/// 				actual result.
/// 			

class RiskCategoryAssessment {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralConcept? negationRationale;
  final dynamic result;

  RiskCategoryAssessment({
 this.startDatetime,
 this.stopDatetime,
 this.negationRationale,
 this.result,
  });
}
