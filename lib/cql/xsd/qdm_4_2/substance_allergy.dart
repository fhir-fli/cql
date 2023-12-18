import 'package:cql/engine/types/types.dart';



/// 
/// 				Data elements that meet criteria using this
/// 				datatype should document an
/// 				immunologically mediated reaction that
/// 				exhibits specificity and
/// 				recurrence on re-exposure to the offending
/// 				substance indicated by
/// 				the QDM category and its corresponding value
/// 				set.
/// 			

class SubstanceAllergy {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralConcept? reaction;

  SubstanceAllergy({
 this.startDatetime,
 this.stopDatetime,
 this.reaction,
  });
}
