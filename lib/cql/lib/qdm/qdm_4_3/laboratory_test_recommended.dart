import 'package:cql/engine/types/types.dart';



///  Data elements that meet criteria using this datatype should document
/// 				a recommendation for the laboratory test indicated by the QDM category and its
/// 				corresponding value set. NOTE: Recommendations address the time that the
/// 				recommendation occurs, a single point in time. Vendors have expressed concerns that
/// 				recommendations are not necessarily captured or managed in a standard manner as part
/// 				of structured data capture in clinical workflow; many are documented as part of
/// 				assessments in narrative text. Measure developers should address feasibility of
/// 				clinical workflow to capture recommendations when evaluating measures. 

class LaboratoryTestRecommended {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? method;
  final LiteralCode? reason;

  LaboratoryTestRecommended({
 this.startDatetime,
 this.stopDatetime,
 this.negationRationale,
 this.method,
 this.reason,
  });
}
