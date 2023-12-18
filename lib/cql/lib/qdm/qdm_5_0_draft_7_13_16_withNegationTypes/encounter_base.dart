import 'package:cql/engine/types/types.dart';



class EncounterBase {
  final LiteralDateTime? authorTime;
  final LiteralCode? reason;
  final LiteralCode? facilityLocation;

  EncounterBase({
 this.authorTime,
 this.reason,
 this.facilityLocation,
  });
}
