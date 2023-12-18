import 'package:cql/engine/types/types.dart';

/// Data elements that meet criteria using this datatype should document
/// a request to a pharmacy to provide the medication indicated by the QDM category and
/// its corresponding value set. NOTE: The start and stop datetime of Device, Order
/// reflects the “author time” of the record in the Quality Reporting Document
/// Architecture (QRDA). This corresponds to when the order was signed. Thus, the Start
/// Datetime and Stop Datetime refer to the same point in time.

class MedicationOrder {
  final LiteralDateTime activeDatetime;
  final LiteralDateTime signedDatetime;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralCode? negationRationale;
  final LiteralInteger? refills;
  final LiteralQuantity? dose;
  final LiteralCode? frequency;
  final LiteralCode? route;
  final LiteralCode? method;
  final LiteralCode? reason;
  final LiteralQuantity? cumulativeMedicationDuration;

  MedicationOrder({
    required this.activeDatetime,
    required this.signedDatetime,
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.refills,
    this.dose,
    this.frequency,
    this.route,
    this.method,
    this.reason,
    this.cumulativeMedicationDuration,
  });
}
