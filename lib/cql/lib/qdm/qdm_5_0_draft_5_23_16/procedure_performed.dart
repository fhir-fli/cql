import 'package:cql/engine/types/types.dart';

import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// the completion of the procedure indicated by the QDM category and its corresponding
/// value set.

class ProcedurePerformed {
  final Interval? interval;
  final CodeableConcept? reason;
  final CodeableConcept? method;
  final CodeableConcept? result;
  final CodeableConcept? status;
  final CodeableConcept? anatomicalApproachSite;
  final CodeableConcept? anatomicalLocationSite;
  final CodeableConcept? ordinality;
  final CodeableConcept? radiationDuration;
  final CodeableConcept? radiationDosage;
  final LiteralDateTime? incisionDatetime;

  ProcedurePerformed({
    this.interval,
    this.reason,
    this.method,
    this.result,
    this.status,
    this.anatomicalApproachSite,
    this.anatomicalLocationSite,
    this.ordinality,
    this.radiationDuration,
    this.radiationDosage,
    this.incisionDatetime,
  });
}
