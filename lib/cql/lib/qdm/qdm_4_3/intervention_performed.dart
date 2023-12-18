import 'package:cql/engine/types/types.dart';

/// Data elements that meet criteria using this datatype should document
/// the completion of the intervention indicated by the QDM category and its
/// corresponding value set.

class InterventionPerformed {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final dynamic result;
  final LiteralCode? status;

  InterventionPerformed({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
    this.result,
    this.status,
  });
}
