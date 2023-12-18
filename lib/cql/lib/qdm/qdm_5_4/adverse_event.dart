import 'package:cql/engine/types/types.dart';



///  Data elements that meet this criterion typically define any untoward
/// 				medical occurrence associated with the delivery of clinical care, whether or not
/// 				considered drug related. Timing: The Relevant Period references the time from when
/// 				the event began to when the event completed. 

class AdverseEvent {
  final LiteralDateTime? authorDatetime;
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralCode? severity;
  final LiteralCode? facilityLocation;

  AdverseEvent({
 this.authorDatetime,
 this.relevantPeriod,
 this.severity,
 this.facilityLocation,
  });
}
