import 'package:cql/engine/types/types.dart';

import 'qdm_5_6.dart';

/// Data elements that meet criteria using this datatype should document
/// that the medications indicated by the QDM category and its corresponding value set
/// should be taken by or given to the patient after being discharged from an inpatient
/// encounter.

class MedicationDischarge {
  final LiteralDateTime? authorDatetime;
  final LiteralInteger? refills;
  final LiteralQuantity? dosage;
  final LiteralQuantity? supply;
  final LiteralCode? frequency;
  final LiteralInteger? daysSupplied;
  final LiteralCode? route;
  final LiteralCode? negationRationale;
  final QDMEntity? prescriber;
  final QDMEntity? recorder;

  MedicationDischarge({
    this.authorDatetime,
    this.refills,
    this.dosage,
    this.supply,
    this.frequency,
    this.daysSupplied,
    this.route,
    this.negationRationale,
    this.prescriber,
    this.recorder,
  });
}
