import 'package:cql/engine/types/types.dart';



/// 
/// 				Data elements that meet criteria using this
/// 				datatype should document the
/// 				completion of the functional status
/// 				assessment indicated by the QDM
/// 				category and its corresponding value
/// 				set.
/// 			

class FunctionalStatusPerformed {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralConcept? negationRationale;
  final LiteralConcept? reason;
  final LiteralConcept? method;
  final dynamic result;

  FunctionalStatusPerformed({
 this.startDatetime,
 this.stopDatetime,
 this.negationRationale,
 this.reason,
 this.method,
 this.result,
  });
}
