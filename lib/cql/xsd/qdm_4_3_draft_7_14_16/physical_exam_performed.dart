import 'package:cql/engine/types/types.dart';



///  Data elements that meet criteria using this datatype should document
/// 				the completion of the physical exam indicated by the QDM category and its
/// 				corresponding value set. 

class PhysicalExamPerformed {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralCode? method;
  final dynamic result;
  final LiteralCode? anatomicalLocationSite;

  PhysicalExamPerformed({
 this.startDatetime,
 this.stopDatetime,
 this.negationRationale,
 this.reason,
 this.method,
 this.result,
 this.anatomicalLocationSite,
  });
}
