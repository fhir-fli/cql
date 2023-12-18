import 'package:cql/engine/types/types.dart';

import 'qdm_5_0_draft.dart';

///  Data elements that meet criteria using this datatype should document
/// 				that the device indicated by the QDM category and its corresponding value set is in
/// 				use, or impacts or alters the treatment, care plan, or encounter (e.g., an
/// 				antithrombotic device has been placed on the patient's legs to prevent
/// 				thromboembolism, or a cardiac pacemaker is in place). NOTE: startDatetime has been
/// 				changed to applicationDatetime 

class DeviceApplied {
  final LiteralDateTime? applicationDatetime;
  final LiteralDateTime? removalDatetime;
  final CodeableConcept? negationRationale;
  final CodeableConcept? reason;
  final CodeableConcept? anatomialLocationSite;
  final CodeableConcept? anatomicalApproachSite;

  DeviceApplied({
 this.applicationDatetime,
 this.removalDatetime,
 this.negationRationale,
 this.reason,
 this.anatomialLocationSite,
 this.anatomicalApproachSite,
  });
}
