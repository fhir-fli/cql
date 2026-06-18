import 'package:cql/cql.dart';

class EncounterBase {
  final LiteralDateTime? authorTime;
  final LiteralCode? facilityLocation;
  final LiteralCode? reason;

  EncounterBase({
    this.authorTime,
    this.reason,
    this.facilityLocation,
  });
}
