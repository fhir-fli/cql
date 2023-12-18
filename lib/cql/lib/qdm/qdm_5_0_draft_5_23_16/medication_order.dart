import 'package:cql/engine/types/types.dart';

import 'qdm_5_0_draft_5_23_16.dart';

///  Data elements that meet criteria using this datatype should document
/// 				a request to a pharmacy to provide the medication indicated by the QDM category and
/// 				its corresponding value set. NOTE: startDatetime, stopDatetime, and signedDatetime
/// 				have been replaced by authorDatetime corresponding to "author time" of the record in
/// 				the Quality Reporting Document Architecture (QRDA). This corresponds to when the
/// 				order was signed. NOTE: "cumulative medication duration" has been removed, the use
/// 				of CMD(interval) is recommended. 

class MedicationOrder {
  final LiteralDateTime activeDatetime;
  final LiteralDateTime authorDatetime;
  final LiteralInteger? refills;
  final LiteralQuantity? dose;
  final CodeableConcept? frequency;
  final CodeableConcept? route;
  final CodeableConcept? method;
  final CodeableConcept? reason;

  MedicationOrder({
required this.activeDatetime,
required this.authorDatetime,
 this.refills,
 this.dose,
 this.frequency,
 this.route,
 this.method,
 this.reason,
  });
}
