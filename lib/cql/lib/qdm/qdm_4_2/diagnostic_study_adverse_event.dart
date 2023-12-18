import 'package:cql/engine/types/types.dart';



/// 
/// 				Data elements that meet criteria using this
/// 				datatype should document an
/// 				unexpected or dangerous reaction to the
/// 				diagnostic study indicated
/// 				by the QDM category and its corresponding
/// 				value set.
/// 			

class DiagnosticStudyAdverseEvent {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralConcept? reaction;
  final LiteralQuantity? radiationDosage;
  final LiteralQuantity? radiationDuration;

  DiagnosticStudyAdverseEvent({
 this.startDatetime,
 this.stopDatetime,
 this.reaction,
 this.radiationDosage,
 this.radiationDuration,
  });
}
