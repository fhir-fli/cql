import 'package:cql/engine/types/types.dart';



///  Data elements that meet criteria using this datatype should document
/// 				completion of the assessment indicated by the QDM category and its corresponding
/// 				value set. 

class AssessmentPerformed {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralCode? method;
  final dynamic result;

  AssessmentPerformed({
 this.authorDatetime,
 this.negationRationale,
 this.reason,
 this.method,
 this.result,
  });
}
