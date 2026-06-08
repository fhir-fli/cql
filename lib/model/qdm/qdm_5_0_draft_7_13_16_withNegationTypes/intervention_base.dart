import 'package:fhir_cql/fhir_cql.dart';

class InterventionBase {
  final LiteralDateTime? authorTime;
  final LiteralCode? reason;

  InterventionBase({
    this.authorTime,
    this.reason,
  });
}
