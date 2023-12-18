import 'package:cql/engine/types/types.dart';

import 'qdm_5_4.dart';

/// Data elements that meet criteria using this datatype should document
/// that a prescription for the medication indicated by the QDM category and its
/// corresponding value set has been dispensed and provided to the patient or patient
/// proxy. In the ambulatory setting, medications are primarily taken directly by
/// patients and not directly observed. Hence, dispensed is the closest health provider
/// documentation of medication compliance. In settings where patients attest to taking
/// medications in electronic format (perhaps a Personal Health Record), patient
/// attestation of “medication taken” may be available.

class MedicationDispensed {
  final LiteralDateTime? authorDatetime;
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralInteger? refills;
  final LiteralQuantity? dosage;
  final LiteralQuantity? supply;
  final LiteralCode? frequency;
  final LiteralInteger? daysSupplied;
  final LiteralCode? route;
  final Id? prescriberId;
  final Id? dispenserId;
  final LiteralCode? negationRationale;

  MedicationDispensed({
    this.authorDatetime,
    this.relevantPeriod,
    this.refills,
    this.dosage,
    this.supply,
    this.frequency,
    this.daysSupplied,
    this.route,
    this.prescriberId,
    this.dispenserId,
    this.negationRationale,
  });
}
