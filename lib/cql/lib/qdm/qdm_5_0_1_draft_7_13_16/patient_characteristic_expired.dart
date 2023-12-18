import 'package:cql/engine/types/types.dart';



/// 
/// 				The Patient Characteristic Expired data element should document that the patient is deceased.
/// 				Note: Patient Characteristic Expired is fixed to SNOMED-CT® code 419099009 (Dead) and 
/// 				therefore cannot be further qualified with a value set.
/// 			

class PatientCharacteristicExpired {
  final LiteralDateTime? expiredDatetime;
  final LiteralCode? cause;

  PatientCharacteristicExpired({
 this.expiredDatetime,
 this.cause,
  });
}
