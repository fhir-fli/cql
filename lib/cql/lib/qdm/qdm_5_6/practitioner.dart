import 'package:cql/engine/types/types.dart';

/// a person with a formal responsibility in the provisioning of
/// healthcare or related services

class Practitioner {
  final LiteralCode? role;
  final LiteralCode? specialty;
  final LiteralCode? qualification;

  Practitioner({
    this.role,
    this.specialty,
    this.qualification,
  });
}
