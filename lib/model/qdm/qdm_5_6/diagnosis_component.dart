import 'package:fhir_cql/fhir_cql.dart';

/// Coded diagnoses/problems addressed during the encounter.

class DiagnosisComponent {
  final LiteralCode code;
  final LiteralCode? presentOnAdmissionIndicator;
  final LiteralInteger? rank;

  DiagnosisComponent({
    required this.code,
    this.presentOnAdmissionIndicator,
    this.rank,
  });
}
