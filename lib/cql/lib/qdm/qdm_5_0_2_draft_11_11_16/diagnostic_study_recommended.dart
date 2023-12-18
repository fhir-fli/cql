import 'package:cql/engine/types/types.dart';



/// 
/// 				Data elements that meet criteria using this
/// 				datatype should document a
/// 				recommendation for a request by a
/// 				clinician or appropriately
/// 				licensed care provider to an appropriate
/// 				provider or organization to
/// 				perform the diagnostic study indicated by
/// 				the QDM category and its
/// 				corresponding value set.
/// 			

class DiagnosticStudyRecommended {
  final LiteralDateTime? authorDatetime;
  final LiteralQuantity? radiationDosage;
  final LiteralQuantity? radiationDuration;
  final LiteralCode? method;
  final LiteralCode? negationRationale;

  DiagnosticStudyRecommended({
 this.authorDatetime,
 this.radiationDosage,
 this.radiationDuration,
 this.method,
 this.negationRationale,
  });
}
