import 'package:fhir_cql/fhir_cql.dart';

class LaboratoryTestBase {
  final LiteralDateTime? authorTime;
  final LiteralCode? method;
  final LiteralCode? reason;

  LaboratoryTestBase({
    this.authorTime,
    this.reason,
    this.method,
  });
}
