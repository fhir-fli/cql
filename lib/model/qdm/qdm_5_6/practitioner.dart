import 'package:fhir_cql/fhir_cql.dart';

/// a person with a formal responsibility in the provisioning of
/// healthcare or related services

class Practitioner {
  final LiteralCode? qualification;
  final LiteralCode? role;
  final LiteralCode? specialty;

  Practitioner({
    this.role,
    this.specialty,
    this.qualification,
  });
}
