import 'package:cql/engine/types/types.dart';

import 'qdm_5_0_1_draft_7_13_16.dart';

/// 
/// 				Data elements that meet criteria using this
/// 				datatype should document the
/// 				completion of the diagnostic study
/// 				indicated by the QDM category and
/// 				its corresponding value set.
/// 				Timing: The Relevant Period addresses:
/// 					startTime – When the diagnostic study is initiated
/// 					stopTime – when the diagnostic study is completed
/// 			

class DiagnosticStudyPerformed {
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralCode? reason;
  final dynamic result;
  final LiteralDateTime? resultDatetime;
  final LiteralCode? status;
  final LiteralQuantity? radiationDosage;
  final LiteralQuantity? radiationDuration;
  final LiteralCode? method;
  final LiteralCode? facilityLocation;
  final LiteralCode? negationRationale;
  final Component? component;

  DiagnosticStudyPerformed({
 this.relevantPeriod,
 this.reason,
 this.result,
 this.resultDatetime,
 this.status,
 this.radiationDosage,
 this.radiationDuration,
 this.method,
 this.facilityLocation,
 this.negationRationale,
 this.component,
  });
}
