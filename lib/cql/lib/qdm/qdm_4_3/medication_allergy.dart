import 'package:cql/engine/types/types.dart';



///  Data elements that meet criteria using this datatype should document
/// 				an immunologically mediated reaction that exhibits specificity and recurrence on
/// 				re-exposure to the offending medication indicated by the QDM category and its
/// 				corresponding value set. 

class MedicationAllergy {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralCode? reaction;

  MedicationAllergy({
 this.startDatetime,
 this.stopDatetime,
 this.reaction,
  });
}
