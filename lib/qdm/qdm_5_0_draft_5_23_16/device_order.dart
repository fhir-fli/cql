import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// an order for the device indicated by the QDM category and its corresponding value
/// set. NOTE: startDatetime and stopDatetime have been replaced by authorDatetime
/// corresponding to "author time" of the record in the Quality Reporting Document
/// Architecture (QRDA). This corresponds to when the order was signed.

class DeviceOrder {
  final LiteralDateTime? authorDatetime;
  final CodeableConcept? reason;

  DeviceOrder({
    this.authorDatetime,
    this.reason,
  });
}
