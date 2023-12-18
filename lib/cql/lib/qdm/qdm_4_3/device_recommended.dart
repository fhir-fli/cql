import 'package:cql/engine/types/types.dart';



///  Data elements that meet criteria using this datatype should document
/// 				a recommendation to use the device indicated by the QDM category and its
/// 				corresponding value set. 

class DeviceRecommended {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;

  DeviceRecommended({
 this.startDatetime,
 this.stopDatetime,
 this.negationRationale,
 this.reason,
  });
}
