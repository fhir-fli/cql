import 'package:cql/engine/types/types.dart';

import 'qdm_5_0_draft_5_23_16.dart';

///  Data elements that meet criteria using this datatype should document
/// 				a request for the substance indicated by the QDM category and its corresponding
/// 				value set. NOTE: startDatetime and stopDatetime have been replaced by authorDatetime
/// 				corresponding to "author time" of the record in the Quality Reporting Document
/// 				Architecture (QRDA). This corresponds to when the order was signed. 

class SubstanceOrder {
  final LiteralDateTime? authorDatetime;
  final CodeableConcept? reason;
  final CodeableConcept? reaction;
  final LiteralQuantity? dose;
  final CodeableConcept? frequency;
  final CodeableConcept? method;
  final LiteralInteger? refills;
  final CodeableConcept? route;

  SubstanceOrder({
 this.authorDatetime,
 this.reason,
 this.reaction,
 this.dose,
 this.frequency,
 this.method,
 this.refills,
 this.route,
  });
}
