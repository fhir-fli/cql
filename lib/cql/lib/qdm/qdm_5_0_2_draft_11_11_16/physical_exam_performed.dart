import 'package:cql/engine/types/types.dart';

///
/// Data elements that meet criteria using this
/// datatype should document the
/// completion of the physical exam
/// indicated by the QDM category and
/// its corresponding value set.
/// Timing: The Relevant Period addresses:
/// startTime – The time the physical examination activity begins
/// stopTime – The time the physical examination activity ends
///

class PhysicalExamPerformed {
  final LiteralDateTime? authorDatetime;
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralCode? reason;
  final LiteralCode? method;
  final dynamic result;
  final LiteralCode? anatomicalLocationSite;
  final LiteralCode? negationRationale;

  PhysicalExamPerformed({
    this.authorDatetime,
    this.relevantPeriod,
    this.reason,
    this.method,
    this.result,
    this.anatomicalLocationSite,
    this.negationRationale,
  });
}
