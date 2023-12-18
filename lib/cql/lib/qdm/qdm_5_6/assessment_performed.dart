import 'package:cql/engine/types/types.dart';

import 'qdm_5_6.dart';

/// Data elements that meet criteria using this datatype should document
/// completion of the assessment indicated by the QDM category and its corresponding
/// value set.

class AssessmentPerformed {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralCode? method;
  final dynamic result;
  final LiteralCode? interpretation;
  final Component? component;
  final LiteralString? relatedTo;
  final QDMEntity? performer;
  final LiteralDateTime? relevantDatetime;
  final LiteralDateTimeInterval? relevantPeriod;

  AssessmentPerformed({
    this.authorDatetime,
    this.negationRationale,
    this.reason,
    this.method,
    this.result,
    this.interpretation,
    this.component,
    this.relatedTo,
    this.performer,
    this.relevantDatetime,
    this.relevantPeriod,
  });
}
