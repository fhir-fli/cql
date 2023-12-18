import 'package:cql/engine/types/types.dart';



/// 
/// 				To meet criteria using this datatype, the
/// 				communication indicated by the Communication QDM category and its
/// 				corresponding value set must be communicated from a provider to a
/// 				patient.
/// 			

class CommunicationFromProviderToPatient {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralConcept? negationRationale;

  CommunicationFromProviderToPatient({
 this.startDatetime,
 this.stopDatetime,
 this.negationRationale,
  });
}
