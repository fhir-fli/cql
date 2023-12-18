import 'package:cql/engine/types/types.dart';

/// Data elements that meet criteria using this datatype should document
/// the laboratory test indicated by the QDM category and its corresponding value set
/// was performed.

class LaboratoryTestPerformed {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? status;
  final LiteralCode? method;
  final dynamic result;
  final LiteralCode? reason;
  final LiteralQuantity? referenceRangeHigh;
  final LiteralQuantity? referenceRangeLow;

  LaboratoryTestPerformed({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.status,
    this.method,
    this.result,
    this.reason,
    this.referenceRangeHigh,
    this.referenceRangeLow,
  });
}
