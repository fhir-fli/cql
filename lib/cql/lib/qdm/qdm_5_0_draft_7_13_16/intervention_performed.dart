import 'package:cql/engine/types/types.dart';

/// Data elements that meet criteria using this datatype should document
/// the completion of the intervention indicated by the QDM category and its
/// corresponding value set. Timing: The Relevant Period addresses: startTime – The time
/// the intervention begins stopTime – The time the intervention ends

class InterventionPerformed {
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralCode? reason;
  final dynamic result;
  final LiteralCode? status;
  final LiteralCode? negationRationale;

  InterventionPerformed({
    this.relevantPeriod,
    this.reason,
    this.result,
    this.status,
    this.negationRationale,
  });
}
