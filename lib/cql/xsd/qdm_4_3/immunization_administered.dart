import 'package:cql/engine/types/types.dart';



///  Data elements that meet criteria using this datatype should document
/// 				that the vaccine indicated by the QDM category and its corresponding value set was
/// 				actually administered to the patient. 

class ImmunizationAdministered {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralCode? route;
  final LiteralQuantity? dose;

  ImmunizationAdministered({
 this.startDatetime,
 this.stopDatetime,
 this.negationRationale,
 this.reason,
 this.route,
 this.dose,
  });
}
