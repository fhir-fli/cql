import 'package:cql/engine/types/types.dart';

import 'qdm_5_0_draft_5_23_16.dart';

///  Data elements that meet criteria using this datatype should document
/// 				that the medications indicated by the QDM category and its corresponding value set
/// 				should be taken by or given to the patient after being discharged from an inpatient
/// 				encounter. NOTE: "cumulative medication duration" has been removed, the use of
/// 				CMD(interval) is recommended. 

class MedicationDischarge {
  final Interval? interval;
  final LiteralInteger? refills;
  final LiteralQuantity? dose;
  final CodeableConcept? frequency;
  final CodeableConcept? route;
  final CodeableConcept? reason;

  MedicationDischarge({
 this.interval,
 this.refills,
 this.dose,
 this.frequency,
 this.route,
 this.reason,
  });
}
