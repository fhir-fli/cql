import 'package:cql/engine/types/types.dart';

/// Data elements that meet criteria using this datatype should document
/// a request for the substance indicated by the QDM category and its corresponding
/// value set. NOTE: The start and stop datetime of Device, Order reflects the “author
/// time” of the record in the Quality Reporting Document Architecture (QRDA). This
/// corresponds to when the order was signed. Thus, the Start Datetime and Stop Datetime
/// refer to the same point in time.

class SubstanceOrder {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralQuantity? dose;
  final LiteralCode? frequency;
  final LiteralCode? method;
  final LiteralInteger? refills;
  final LiteralCode? route;

  SubstanceOrder({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
    this.dose,
    this.frequency,
    this.method,
    this.refills,
    this.route,
  });
}
