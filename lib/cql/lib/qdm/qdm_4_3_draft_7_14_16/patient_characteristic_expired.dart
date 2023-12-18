import 'package:cql/engine/types/types.dart';



///  The Patient Characteristic Expired data element should document that
/// 				the patient is deceased. Note: Patient Characteristic Expired is fixed to SNOMED-CT®
/// 				code 419099009 (Dead) and therefore cannot be further qualified with a value set. 

class PatientCharacteristicExpired {
  final LiteralDate? date;
  final LiteralTime? time;
  final LiteralCode? cause;

  PatientCharacteristicExpired({
 this.date,
 this.time,
 this.cause,
  });
}
