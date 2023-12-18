import 'package:cql/engine/types/types.dart';



///  Data elements that meet criteria using this datatype should document
/// 				that the encounter indicated by the QDM category and its corresponding value set was
/// 				not recommended. 

class EncounterNotRecommended {
  final LiteralCode? negationRationale;

  EncounterNotRecommended({
 this.negationRationale,
  });
}
