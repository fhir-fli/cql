import 'package:cql/engine/types/types.dart';

import 'qdm_4_3_draft_7_14_16.dart';

///  Data elements that meet criteria using this datatype should document
/// 				that the encounter indicated by the QDM category and its corresponding value set has
/// 				been completed. NOTE: This datatype uses admissionDatetime and dischargeDatetime
/// 				rather than startDatetime and stopDatetime, respectively. 

class EncounterPerformed {
  final LiteralDateTime? admissionDatetime;
  final LiteralDateTime? dischargeDatetime;
  final LiteralQuantity? lengthOfStay;
  final LiteralCode? dischargeStatus;
  final LiteralCode? facilityLocation;
  final LiteralDateTime? facilityLocationArrivalDatetime;
  final LiteralDateTime? facilityLocationDepartureDatetime;
  final LiteralCode? reason;
  final LiteralCode? diagnosis;
  final LiteralCode? principalDiagnosis;
  final LiteralCode? negationRationale;

  EncounterPerformed({
 this.admissionDatetime,
 this.dischargeDatetime,
 this.lengthOfStay,
 this.dischargeStatus,
 this.facilityLocation,
 this.facilityLocationArrivalDatetime,
 this.facilityLocationDepartureDatetime,
 this.reason,
 this.diagnosis,
 this.principalDiagnosis,
 this.negationRationale,
  });
}
