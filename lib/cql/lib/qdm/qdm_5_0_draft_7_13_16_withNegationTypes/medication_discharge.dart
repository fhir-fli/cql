import 'package:cql/engine/types/types.dart';

/// Data elements that meet criteria using this datatype should document
/// that the medications indicated by the QDM category and its corresponding value set
/// should be taken by or given to the patient after being discharged from an inpatient
/// encounter.

class MedicationDischarge {
  final LiteralDateTime? authorTime;
  final LiteralInteger? refills;
  final LiteralCode? reason;

  MedicationDischarge({
    this.authorTime,
    this.refills,
    this.reason,
  });
}
