import 'package:cql/engine/types/types.dart';

import 'qdm_5_3.dart';

///  Data elements that meet criteria using this datatype should document
/// 				that the vaccine indicated by the QDM category and its corresponding value set was
/// 				actually administered to the patient. 

class ImmunizationAdministered {
  final LiteralDateTime? authorDatetime;
  final LiteralQuantity? dosage;
  final LiteralQuantity? supply;
  final LiteralCode? reason;
  final LiteralCode? route;
  final LiteralCode? negationRationale;

  ImmunizationAdministered({
 this.authorDatetime,
 this.dosage,
 this.supply,
 this.reason,
 this.route,
 this.negationRationale,
  });
}
