import 'package:cql/engine/types/types.dart';

import 'qdm_5_3.dart';

/// Data elements that meet criteria using this datatype should document
/// the completion of the procedure indicated by the QDM category and its corresponding
/// value set. Timing: The Relevant Period addresses: startTime - the time the procedure
/// begins; stopTime - the time the procedure is completed

class ProcedurePerformed {
  final LiteralDateTime? authorDatetime;
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralCode? reason;
  final LiteralCode? method;
  final dynamic result;
  final LiteralCode? status;
  final LiteralCode? anatomicalApproachSite;
  final LiteralCode? anatomicalLocationSite;
  final LiteralCode? ordinality;
  final LiteralDateTime? incisionDatetime;
  final LiteralCode? negationRationale;
  final Component? component;

  ProcedurePerformed({
    this.authorDatetime,
    this.relevantPeriod,
    this.reason,
    this.method,
    this.result,
    this.status,
    this.anatomicalApproachSite,
    this.anatomicalLocationSite,
    this.ordinality,
    this.incisionDatetime,
    this.negationRationale,
    this.component,
  });
}
