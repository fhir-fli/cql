import 'package:cql/engine/types/types.dart';

import 'qdm_5_6.dart';

/// Data elements that meet criteria using this datatype should document
/// the completion of the diagnostic study indicated by the QDM category and its
/// corresponding value set. Timing: The Relevant Period addresses: startTime – When the
/// diagnostic study is initiated stopTime – when the diagnostic study is completed

class DiagnosticStudyPerformed {
  final LiteralDateTime? authorDatetime;
  final LiteralDateTime? relevantDatetime;
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralCode? reason;
  final dynamic result;
  final LiteralDateTime? resultDatetime;
  final LiteralCode? interpretation;
  final LiteralCode? status;
  final LiteralCode? method;
  final LiteralCode? facilityLocation;
  final LiteralCode? negationRationale;
  final Component? component;
  final QDMEntity? performer;
  final LiteralString? relatedTo;

  DiagnosticStudyPerformed({
    this.authorDatetime,
    this.relevantDatetime,
    this.relevantPeriod,
    this.reason,
    this.result,
    this.resultDatetime,
    this.interpretation,
    this.status,
    this.method,
    this.facilityLocation,
    this.negationRationale,
    this.component,
    this.performer,
    this.relatedTo,
  });
}
