import 'package:cql/engine/types/types.dart';

import 'qdm_5_0_2_draft_11_11_16.dart';

/// 
/// 				Data elements that meet criteria using this
/// 				datatype should document the
/// 				laboratory test indicated by the QDM
/// 				category and its corresponding
/// 				value set was performed.
/// 				Timing: The Relevant Period addresses:
/// 					startTime – When the laboratory test is initiated (i.e., the time the specimen collection begins)
/// 					stopTime – when the laboratory test is completed (i.e., the time the specimen collection ends)
/// 				Note – the time that the result report is available is a separate 
/// 				attribute than the time of the study (specimen collection)
/// 			

class LaboratoryTestPerformed {
  final LiteralDateTime? authorDatetime;
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralCode? status;
  final LiteralCode? method;
  final dynamic result;
  final LiteralDateTime? resultDatetime;
  final LiteralCode? reason;
  final LiteralQuantityInterval? referenceRange;
  final LiteralCode? negationRationale;
  final Component? component;

  LaboratoryTestPerformed({
 this.authorDatetime,
 this.relevantPeriod,
 this.status,
 this.method,
 this.result,
 this.resultDatetime,
 this.reason,
 this.referenceRange,
 this.negationRationale,
 this.component,
  });
}
