import 'package:cql/engine/types/literal_types.dart';

/// Data elements that meet criteria using this datatype should document
/// that a prescription for the medication indicated by the QDM category and its
/// corresponding value set was not dispensed or provided to the patient or patient
/// proxy.

class MedicationNotDispensed {
  final LiteralDateTime? authorTime;
  final LiteralCode? negationRationale;

  MedicationNotDispensed({
    this.authorTime,
    this.negationRationale,
  });
}
