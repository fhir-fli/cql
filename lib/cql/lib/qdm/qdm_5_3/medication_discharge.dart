import 'package:cql/engine/types/types.dart';

///  Data elements that meet criteria using this datatype should document
/// 				that the medications indicated by the QDM category and its corresponding value set
/// 				should be taken by or given to the patient after being discharged from an inpatient
/// 				encounter.

class MedicationDischarge {
  final LiteralDateTime? authorDatetime;
  final LiteralInteger? refills;
  final LiteralQuantity? dosage;
  final LiteralQuantity? supply;
  final LiteralCode? frequency;
  final LiteralCode? route;
  final LiteralCode? negationRationale;

  MedicationDischarge({
    this.authorDatetime,
    this.refills,
    this.dosage,
    this.supply,
    this.frequency,
    this.route,
    this.negationRationale,
  });
}
