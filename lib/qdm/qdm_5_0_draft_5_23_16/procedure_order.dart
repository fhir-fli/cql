import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// a request for the procedure indicated by the QDM category and its corresponding
/// value set. NOTE: startDatetime and stopDatetime have been replaced by authorDatetime
/// corresponding to "author time" of the record in the Quality Reporting Document
/// Architecture (QRDA). This corresponds to when the order was signed.

class ProcedureOrder {
  final CodeableConcept? anatomicalApproachSite;
  final CodeableConcept? anatomicalLocationSite;
  final LiteralDateTime? authorDatetime;
  final CodeableConcept? method;
  final CodeableConcept? ordinality;
  final CodeableConcept? radiationDuration;
  final CodeableConcept? reason;

  ProcedureOrder({
    this.authorDatetime,
    this.reason,
    this.method,
    this.anatomicalApproachSite,
    this.anatomicalLocationSite,
    this.ordinality,
    this.radiationDuration,
  });
}
