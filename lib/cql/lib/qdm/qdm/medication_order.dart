import 'package:cql/engine/types/types.dart';

import 'qdm.dart';

class MedicationOrder {
  final LiteralDateTime activeDatetime;
  final LiteralDateTime signedDatetime;
  final LiteralInteger? refills;
  final LiteralQuantity? dose;
  final CodeableConcept? frequency;
  final CodeableConcept? route;
  final CodeableConcept? method;
  final CodeableConcept? reason;
  final LiteralQuantity? cumulativeMedicationDuration;

  MedicationOrder({
    required this.activeDatetime,
    required this.signedDatetime,
    this.refills,
    this.dose,
    this.frequency,
    this.route,
    this.method,
    this.reason,
    this.cumulativeMedicationDuration,
  });
}
