import 'package:cql/engine/types/types.dart';



/// 
/// 				Data elements that meet criteria using this
/// 				datatype should document
/// 				that the medication indicated by the QDM
/// 				category and its
/// 				corresponding value set was actually administered to
/// 				the patient.
/// 			

class MedicationAdministered {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralConcept? negationRationale;
  final LiteralQuantity? dose;
  final LiteralConcept? frequency;
  final LiteralConcept? route;
  final LiteralConcept? reason;
  final LiteralQuantity? cumulativeMedicationDuration;

  MedicationAdministered({
 this.startDatetime,
 this.stopDatetime,
 this.negationRationale,
 this.dose,
 this.frequency,
 this.route,
 this.reason,
 this.cumulativeMedicationDuration,
  });
}
